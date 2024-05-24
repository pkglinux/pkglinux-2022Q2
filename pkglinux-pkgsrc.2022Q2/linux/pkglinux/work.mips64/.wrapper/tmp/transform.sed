s|^\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1|g
s|^\(/[^ 	`"':;,]*\)/\.$|\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-I\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.$|-I\1|g
s|^-isystem,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-isystem,\1|g
s|^-isystem,\(/[^ 	`"':;,]*\)/\.$|-isystem,\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-L\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.$|-L\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,--rpath,\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,--rpath,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath,\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-R\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.$|-Wl,-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.$|-R\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_include#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_include#\1|g
s|^-isystem,/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__usr_include#\1|g
s|^-isystem,/usr/include\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__usr_include#\1|g
s|^-L/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__lib#\1|g
s|^-L/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__lib#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_lib#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_lib#\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,--rpath,/2022Q2-mips64abi64|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,-rpath-link,/2022Q2-mips64abi64|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,-rpath,/2022Q2-mips64abi64|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,-R/2022Q2-mips64abi64|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-R/2022Q2-mips64abi64|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-R/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib$|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib$|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib$|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-R/2022Q2-mips64abi64/lib$|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-R/2022Q2-mips64abi64/lib$|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^/2022Q2-mips64abi64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^/2022Q2-mips64abi64\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/2022Q2-mips64abi64\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/2022Q2-mips64abi64$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-isystem,/2022Q2-mips64abi64\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-isystem,/2022Q2-mips64abi64$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-I/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-isystem,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-isystem,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-L/2022Q2-mips64abi64\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-L/2022Q2-mips64abi64$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#|g
s|^-L/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-L/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\1|g
s|^-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-I/[^ 	`"':;,]*$||g
s|^-isystem,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-isystem,/[^ 	`"':;,]*$||g
s|^-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-L/[^ 	`"':;,]*$||g
s|^-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,--rpath,/[^ 	`"':;,]*$||g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*$||g
s|^-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath,/[^ 	`"':;,]*$||g
s|^-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-R/[^ 	`"':;,]*$||g
s|^-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-R/[^ 	`"':;,]*$||g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,--rpath,/2022Q2-mips64abi64/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-rpath-link,/2022Q2-mips64abi64/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-rpath,/2022Q2-mips64abi64/lib|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-R/2022Q2-mips64abi64/lib|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-R/2022Q2-mips64abi64/lib\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-R/2022Q2-mips64abi64/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/2022Q2-mips64abi64/lib\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-R/2022Q2-mips64abi64/lib\1|g
s|^-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#$|-I/usr/include|g
s|^-isystem,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-isystem,/usr/include\1|g
s|^-isystem,_bUiLdLiNk__usr_include#$|-isystem,/usr/include|g
s|^-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#$|-L/usr/include|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#$|-Wl,--rpath,/usr/include|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#$|-Wl,-rpath-link,/usr/include|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#$|-Wl,-rpath,/usr/include|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#$|-Wl,-R/usr/include|g
s|^-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#$|-R/usr/include|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/include\1|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la\)$|/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-I/usr/include\1|g
s|^-isystem,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/usr/include\1|g
s|^-isystem,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-isystem,/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-L/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-R/usr/include\1|g
s|^-I_bUiLdLiNk__lib#\([ 	`"':;,]\)|-I/lib\1|g
s|^-I_bUiLdLiNk__lib#$|-I/lib|g
s|^-isystem,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-isystem,/lib\1|g
s|^-isystem,_bUiLdLiNk__lib#$|-isystem,/lib|g
s|^-L_bUiLdLiNk__lib#\([ 	`"':;,]\)|-L/lib\1|g
s|^-L_bUiLdLiNk__lib#$|-L/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,--rpath,/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#$|-Wl,--rpath,/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#$|-Wl,-rpath-link,/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,-rpath,/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#$|-Wl,-rpath,/lib|g
s|^-Wl,-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,-R/lib\1|g
s|^-Wl,-R_bUiLdLiNk__lib#$|-Wl,-R/lib|g
s|^-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|-R/lib\1|g
s|^-R_bUiLdLiNk__lib#$|-R/lib|g
s|^_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/lib\1|g
s|^_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\.la\)$|/lib\1|g
s|^-I_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/lib\1|g
s|^-I_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-I/lib\1|g
s|^-isystem,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/lib\1|g
s|^-isystem,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-isystem,/lib\1|g
s|^-L_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/lib\1|g
s|^-L_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-L/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/lib\1|g
s|^-Wl,-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/lib\1|g
s|^-Wl,-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/lib\1|g
s|^-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/lib\1|g
s|^-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-R/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#$|-I/usr/lib|g
s|^-isystem,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-isystem,/usr/lib\1|g
s|^-isystem,_bUiLdLiNk__usr_lib#$|-isystem,/usr/lib|g
s|^-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#$|-L/usr/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#$|-Wl,--rpath,/usr/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#$|-Wl,-rpath-link,/usr/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#$|-Wl,-rpath,/usr/lib|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#$|-Wl,-R/usr/lib|g
s|^-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#$|-R/usr/lib|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/lib\1|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la\)$|/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-I/usr/lib\1|g
s|^-isystem,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/usr/lib\1|g
s|^-isystem,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-isystem,/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-L/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-R/usr/lib\1|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-I/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#$|-I/2022Q2-mips64abi64|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-isystem,/2022Q2-mips64abi64\1|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#$|-isystem,/2022Q2-mips64abi64|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-L/2022Q2-mips64abi64\1|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#$|-L/2022Q2-mips64abi64|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,--rpath,/2022Q2-mips64abi64|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,-rpath-link,/2022Q2-mips64abi64|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,-rpath,/2022Q2-mips64abi64|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,-R/2022Q2-mips64abi64|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#$|-R/2022Q2-mips64abi64|g
s|^_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/2022Q2-mips64abi64\1|g
s|^_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\.la\)$|/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-I/2022Q2-mips64abi64\1|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/2022Q2-mips64abi64\1|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-isystem,/2022Q2-mips64abi64\1|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/2022Q2-mips64abi64\1|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-L/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-R/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\.la\)$|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64#\(/[^ 	`"':;,]*\)$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_linux_pkglinux_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/linux/pkglinux/work.mips64/.buildlink\1|g
