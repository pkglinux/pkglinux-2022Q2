diff --git a/misc/syslog.c b/misc/syslog.c
index ee83b1bb76..34ee5dd655 100644
--- a/misc/syslog.c
+++ b/misc/syslog.c
@@ -60,20 +60,20 @@  static char sccsid[] = "@(#)syslog.c	8.4 (Berkeley) 3/18/94";
 
 #define ftell(s) _IO_ftell (s)
 
-static int	LogType = SOCK_DGRAM;	/* type of socket connection */
-static int	LogFile = -1;		/* fd for log */
-static bool	connected;		/* have done connect */
-static int	LogStat;		/* status bits, set by openlog() */
+static int LogType = SOCK_DGRAM;	/* type of socket connection */
+static int LogFile = -1;		/* fd for log */
+static bool connected;		/* have done connect */
+static int LogStat;		/* status bits, set by openlog() */
 static const char *LogTag;		/* string to tag the entry with */
-static int	LogFacility = LOG_USER;	/* default facility code */
-static int	LogMask = 0xff;		/* mask of priorities to be logged */
-extern char	*__progname;		/* Program name, from crt0. */
+static int LogFacility = LOG_USER;	/* default facility code */
+static int LogMask = 0xff;		/* mask of priorities to be logged */
+extern char *__progname;		/* Program name, from crt0. */
 
 /* Define the lock.  */
 __libc_lock_define_initialized (static, syslog_lock)
 
-static void openlog_internal(const char *, int, int);
-static void closelog_internal(void);
+static void openlog_internal (const char *, int, int);
+static void closelog_internal (void);
 
 struct cleanup_arg
 {
@@ -101,205 +101,204 @@  cancel_handler (void *ptr)
  *	print message on log file; output is intended for syslogd(8).
  */
 void
-__syslog(int pri, const char *fmt, ...)
+__syslog (int pri, const char *fmt, ...)
 {
-	va_list ap;
+  va_list ap;
 
-	va_start(ap, fmt);
-	__vsyslog_internal(pri, fmt, ap, 0);
-	va_end(ap);
+  va_start (ap, fmt);
+  __vsyslog_internal (pri, fmt, ap, 0);
+  va_end (ap);
 }
 ldbl_hidden_def (__syslog, syslog)
 ldbl_strong_alias (__syslog, syslog)
 
 void
-__vsyslog(int pri, const char *fmt, va_list ap)
+__vsyslog (int pri, const char *fmt, va_list ap)
 {
-	__vsyslog_internal(pri, fmt, ap, 0);
+  __vsyslog_internal (pri, fmt, ap, 0);
 }
 ldbl_weak_alias (__vsyslog, vsyslog)
 
 void
-__syslog_chk(int pri, int flag, const char *fmt, ...)
+__syslog_chk (int pri, int flag, const char *fmt, ...)
 {
-	va_list ap;
+  va_list ap;
 
-	va_start(ap, fmt);
-	__vsyslog_internal(pri, fmt, ap, (flag > 0) ? PRINTF_FORTIFY : 0);
-	va_end(ap);
+  va_start (ap, fmt);
+  __vsyslog_internal (pri, fmt, ap, (flag > 0) ? PRINTF_FORTIFY : 0);
+  va_end (ap);
 }
 
 void
 __vsyslog_chk(int pri, int flag, const char *fmt, va_list ap)
 {
-	__vsyslog_internal(pri, fmt, ap, (flag > 0) ? PRINTF_FORTIFY : 0);
+  __vsyslog_internal (pri, fmt, ap, (flag > 0) ? PRINTF_FORTIFY : 0);
 }
 
 void
 __vsyslog_internal(int pri, const char *fmt, va_list ap,
 		   unsigned int mode_flags)
 {
-	struct tm now_tm;
-	time_t now;
-	int fd;
-	FILE *f;
-	char *buf = 0;
-	size_t bufsize = 0;
-	size_t msgoff;
-	int saved_errno = errno;
-	char failbuf[3 * sizeof (pid_t) + sizeof "out of memory []"];
-
-#define	INTERNALLOG	LOG_ERR|LOG_CONS|LOG_PERROR|LOG_PID
-	/* Check for invalid bits. */
-	if (pri & ~(LOG_PRIMASK|LOG_FACMASK)) {
-		syslog(INTERNALLOG,
-		    "syslog: unknown facility/priority: %x", pri);
-		pri &= LOG_PRIMASK|LOG_FACMASK;
-	}
-
-	/* Prepare for multiple users.  We have to take care: most
-	   syscalls we are using are cancellation points.  */
-	struct cleanup_arg clarg;
-	clarg.buf = NULL;
-	clarg.oldaction = NULL;
-	__libc_cleanup_push (cancel_handler, &clarg);
-	__libc_lock_lock (syslog_lock);
-
-	/* Check priority against setlogmask values. */
-	if ((LOG_MASK (LOG_PRI (pri)) & LogMask) == 0)
-		goto out;
-
-	/* Set default facility if none specified. */
-	if ((pri & LOG_FACMASK) == 0)
-		pri |= LogFacility;
-
-	/* Build the message in a memory-buffer stream.  */
-	f = __open_memstream (&buf, &bufsize);
-	if (f == NULL)
-	  {
-	    /* We cannot get a stream.  There is not much we can do but
-	       emitting an error messages.  */
-	    char numbuf[3 * sizeof (pid_t)];
-	    char *nump;
-	    char *endp = __stpcpy (failbuf, "out of memory [");
-	    pid_t pid = __getpid ();
-
-	    nump = numbuf + sizeof (numbuf);
-	    /* The PID can never be zero.  */
-	    do
-	      *--nump = '0' + pid % 10;
-	    while ((pid /= 10) != 0);
-
-	    endp = __mempcpy (endp, nump, (numbuf + sizeof (numbuf)) - nump);
-	    *endp++ = ']';
-	    *endp = '\0';
-	    buf = failbuf;
-	    bufsize = endp - failbuf;
-	    msgoff = 0;
-	  }
-	else
-	  {
-	    __fsetlocking (f, FSETLOCKING_BYCALLER);
-	    fprintf (f, "<%d>", pri);
-	    now = time_now ();
-	    f->_IO_write_ptr += __strftime_l (f->_IO_write_ptr,
-					      f->_IO_write_end
-					      - f->_IO_write_ptr,
-					      "%h %e %T ",
-					      __localtime_r (&now, &now_tm),
-					      _nl_C_locobj_ptr);
-	    msgoff = ftell (f);
-	    if (LogTag == NULL)
-	      LogTag = __progname;
-	    if (LogTag != NULL)
-	      __fputs_unlocked (LogTag, f);
-	    if (LogStat & LOG_PID)
-	      fprintf (f, "[%d]", (int) __getpid ());
-	    if (LogTag != NULL)
-	      {
-		__putc_unlocked (':', f);
-		__putc_unlocked (' ', f);
-	      }
-
-	    /* Restore errno for %m format.  */
-	    __set_errno (saved_errno);
-
-	    /* We have the header.  Print the user's format into the
-	       buffer.  */
-	    __vfprintf_internal (f, fmt, ap, mode_flags);
-
-	    /* Close the memory stream; this will finalize the data
-	       into a malloc'd buffer in BUF.  */
-	    fclose (f);
-
-	    /* Tell the cancellation handler to free this buffer.  */
-	    clarg.buf = buf;
-	  }
-
-	/* Output to stderr if requested. */
-	if (LogStat & LOG_PERROR) {
-		struct iovec iov[2];
-		struct iovec *v = iov;
-
-		v->iov_base = buf + msgoff;
-		v->iov_len = bufsize - msgoff;
-		/* Append a newline if necessary.  */
-		if (buf[bufsize - 1] != '\n')
-		  {
-		    ++v;
-		    v->iov_base = (char *) "\n";
-		    v->iov_len = 1;
-		  }
+  struct tm now_tm;
+  time_t now;
+  int fd;
+  FILE *f;
+  char *buf = 0;
+  size_t bufsize = 0;
+  size_t msgoff;
+  int saved_errno = errno;
+  char failbuf[3 * sizeof (pid_t) + sizeof "out of memory []"];
+
+#define	INTERNALLOG LOG_ERR|LOG_CONS|LOG_PERROR|LOG_PID
+  /* Check for invalid bits. */
+  if (pri & ~(LOG_PRIMASK|LOG_FACMASK))
+    {
+      syslog (INTERNALLOG, "syslog: unknown facility/priority: %x", pri);
+      pri &= LOG_PRIMASK|LOG_FACMASK;
+    }
+
+  /* Prepare for multiple users.  We have to take care: most syscalls we are
+     using are cancellation points.  */
+  struct cleanup_arg clarg;
+  clarg.buf = NULL;
+  clarg.oldaction = NULL;
+  __libc_cleanup_push (cancel_handler, &clarg);
+  __libc_lock_lock (syslog_lock);
 
-		/* writev is a cancellation point.  */
-		(void)__writev(STDERR_FILENO, iov, v - iov + 1);
+  /* Check priority against setlogmask values. */
+  if ((LOG_MASK (LOG_PRI (pri)) & LogMask) == 0)
+    goto out;
+
+  /* Set default facility if none specified. */
+  if ((pri & LOG_FACMASK) == 0)
+    pri |= LogFacility;
+
+  /* Build the message in a memory-buffer stream.  */
+  f = __open_memstream (&buf, &bufsize);
+  if (f == NULL)
+    {
+      /* We cannot get a stream.  There is not much we can do but emitting an
+	 error messages.  */
+      char numbuf[3 * sizeof (pid_t)];
+      char *nump;
+      char *endp = __stpcpy (failbuf, "out of memory [");
+      pid_t pid = __getpid ();
+
+      nump = numbuf + sizeof (numbuf);
+      /* The PID can never be zero.  */
+      do
+	*--nump = '0' + pid % 10;
+      while ((pid /= 10) != 0);
+
+      endp = __mempcpy (endp, nump, (numbuf + sizeof (numbuf)) - nump);
+      *endp++ = ']';
+      *endp = '\0';
+      buf = failbuf;
+      bufsize = endp - failbuf;
+      msgoff = 0;
+    }
+  else
+    {
+      __fsetlocking (f, FSETLOCKING_BYCALLER);
+      fprintf (f, "<%d>", pri);
+      now = time_now ();
+      f->_IO_write_ptr += __strftime_l (f->_IO_write_ptr,
+					f->_IO_write_end - f->_IO_write_ptr,
+					"%h %e %T ",
+					__localtime_r (&now, &now_tm),
+					_nl_C_locobj_ptr);
+      msgoff = ftell (f);
+      if (LogTag == NULL)
+	LogTag = __progname;
+      if (LogTag != NULL)
+	__fputs_unlocked (LogTag, f);
+      if (LogStat & LOG_PID)
+	fprintf (f, "[%d]", (int) __getpid ());
+      if (LogTag != NULL)
+	{
+	  __putc_unlocked (':', f);
+	  __putc_unlocked (' ', f);
 	}
 
-	/* Get connected, output the message to the local logger. */
-	if (!connected)
-		openlog_internal(NULL, LogStat | LOG_NDELAY, LogFacility);
+      /* Restore errno for %m format.  */
+      __set_errno (saved_errno);
+
+      /* We have the header.  Print the user's format into the buffer.  */
+      __vfprintf_internal (f, fmt, ap, mode_flags);
+
+      /* Close the memory stream; this will finalize the data into a malloc'd
+	 buffer in BUF.  */
+      fclose (f);
+
+      /* Tell the cancellation handler to free this buffer.  */
+      clarg.buf = buf;
+    }
+
+  /* Output to stderr if requested. */
+  if (LogStat & LOG_PERROR)
+    {
+      struct iovec iov[2];
+      struct iovec *v = iov;
+
+      v->iov_base = buf + msgoff;
+      v->iov_len = bufsize - msgoff;
+      /* Append a newline if necessary.  */
+      if (buf[bufsize - 1] != '\n')
+	{
+	  ++v;
+	  v->iov_base = (char *) "\n";
+	  v->iov_len = 1;
+	}
 
-	/* If we have a SOCK_STREAM connection, also send ASCII NUL as
-	   a record terminator.  */
-	if (LogType == SOCK_STREAM)
-	  ++bufsize;
+      	/* writev is a cancellation point.  */
+      	__writev (STDERR_FILENO, iov, v - iov + 1);
+    }
 
-	if (!connected || __send(LogFile, buf, bufsize, MSG_NOSIGNAL) < 0)
-	  {
-	    if (connected)
-	      {
-		/* Try to reopen the syslog connection.  Maybe it went
-		   down.  */
-		closelog_internal ();
-		openlog_internal(NULL, LogStat | LOG_NDELAY, LogFacility);
-	      }
+  /* Get connected, output the message to the local logger.  */
+  if (!connected)
+    openlog_internal (NULL, LogStat | LOG_NDELAY, LogFacility);
+
+  /* If we have a SOCK_STREAM connection, also send ASCII NUL as a record
+     terminator.  */
+  if (LogType == SOCK_STREAM)
+    ++bufsize;
+
+  if (!connected || __send(LogFile, buf, bufsize, MSG_NOSIGNAL) < 0)
+    {
+      if (connected)
+	{
+	  /* Try to reopen the syslog connection.  Maybe it went down.  */
+	  closelog_internal ();
+	  openlog_internal (NULL, LogStat | LOG_NDELAY, LogFacility);
+	}
 
-	    if (!connected || __send(LogFile, buf, bufsize, MSG_NOSIGNAL) < 0)
-	      {
-		closelog_internal ();	/* attempt re-open next time */
-		/*
-		 * Output the message to the console; don't worry
-		 * about blocking, if console blocks everything will.
-		 * Make sure the error reported is the one from the
-		 * syslogd failure.
-		 */
-		if (LogStat & LOG_CONS &&
-		    (fd = __open(_PATH_CONSOLE, O_WRONLY|O_NOCTTY|O_CLOEXEC,
-				 0)) >= 0)
-		  {
-		    __dprintf (fd, "%s\r\n", buf + msgoff);
-		    (void)__close(fd);
-		  }
-	      }
-	  }
+      if (!connected || __send(LogFile, buf, bufsize, MSG_NOSIGNAL) < 0)
+	{
+	  closelog_internal ();	/* attempt re-open next time */
+	  /*
+	   * Output the message to the console; don't worry
+	   * about blocking, if console blocks everything will.
+	   * Make sure the error reported is the one from the
+	   * syslogd failure.
+	   */
+	  if (LogStat & LOG_CONS &&
+	      (fd = __open (_PATH_CONSOLE, O_WRONLY | O_NOCTTY
+			    | O_CLOEXEC, 0))
+	      >= 0)
+	    {
+	      __dprintf (fd, "%s\r\n", buf + msgoff);
+	      __close(fd);
+	    }
+	}
+    }
 
  out:
-	/* End of critical section.  */
-	__libc_cleanup_pop (0);
-	__libc_lock_unlock (syslog_lock);
+  /* End of critical section.  */
+  __libc_cleanup_pop (0);
+  __libc_lock_unlock (syslog_lock);
 
-	if (buf != failbuf)
-		free (buf);
+  if (buf != failbuf)
+    free (buf);
 }
 
 /* AF_UNIX address of local logger  */
@@ -312,45 +311,48 @@  static const struct sockaddr_un SyslogAddr =
 static void
 openlog_internal(const char *ident, int logstat, int logfac)
 {
-	if (ident != NULL)
-		LogTag = ident;
-	LogStat = logstat;
-	if ((logfac &~ LOG_FACMASK) == 0)
-		LogFacility = logfac;
-
-	int retry = 0;
-	while (retry < 2) {
-		if (LogFile == -1) {
-			if (LogStat & LOG_NDELAY) {
-			  LogFile = __socket(AF_UNIX, LogType | SOCK_CLOEXEC, 0);
-			  if (LogFile == -1)
-			    return;
-			}
-		}
-		if (LogFile != -1 && !connected)
-		{
-			int old_errno = errno;
-			if (__connect(LogFile, &SyslogAddr, sizeof(SyslogAddr))
-			    == -1)
-			{
-				int saved_errno = errno;
-				int fd = LogFile;
-				LogFile = -1;
-				(void)__close(fd);
-				__set_errno (old_errno);
-				if (saved_errno == EPROTOTYPE)
-				{
-					/* retry with the other type: */
-					LogType = (LogType == SOCK_DGRAM
-						   ? SOCK_STREAM : SOCK_DGRAM);
-					++retry;
-					continue;
-				}
-			} else
-				connected = true;
-		}
-		break;
+  if (ident != NULL)
+    LogTag = ident;
+  LogStat = logstat;
+  if ((logfac &~ LOG_FACMASK) == 0)
+    LogFacility = logfac;
+
+  int retry = 0;
+  while (retry < 2)
+    {
+      if (LogFile == -1)
+       	{
+	  if (LogStat & LOG_NDELAY)
+	    {
+	      LogFile = __socket (AF_UNIX, LogType | SOCK_CLOEXEC, 0);
+	      if (LogFile == -1)
+		return;
+	    }
 	}
+      	if (LogFile != -1 && !connected)
+	  {
+	    int old_errno = errno;
+	    if (__connect (LogFile, &SyslogAddr, sizeof(SyslogAddr)) == -1)
+	      {
+		int saved_errno = errno;
+		int fd = LogFile;
+		LogFile = -1;
+		__close(fd);
+		__set_errno (old_errno);
+		if (saved_errno == EPROTOTYPE)
+		  {
+		    /* retry with the other type: */
+		    LogType = (LogType == SOCK_DGRAM
+			       ? SOCK_STREAM : SOCK_DGRAM);
+		    ++retry;
+		    continue;
+		  }
+	      }
+	    else
+	      connected = true;
+	  }
+	break;
+    }
 }
 
 void
@@ -395,16 +397,16 @@  closelog (void)
 int
 setlogmask (int pmask)
 {
-	int omask;
+  int omask;
 
-	/* Protect against multiple users.  */
-	__libc_lock_lock (syslog_lock);
+  /* Protect against multiple users.  */
+  __libc_lock_lock (syslog_lock);
 
-	omask = LogMask;
-	if (pmask != 0)
-		LogMask = pmask;
+  omask = LogMask;
+  if (pmask != 0)
+    LogMask = pmask;
 
-	__libc_lock_unlock (syslog_lock);
+  __libc_lock_unlock (syslog_lock);
 
-	return (omask);
+  return (omask);
 }
