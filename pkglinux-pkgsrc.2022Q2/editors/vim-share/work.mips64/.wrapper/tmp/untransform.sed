s|\([ 	`"':;,]\)-lterminfo\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-lterminfo\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-lterminfo$|\1|g
s|^-lterminfo\([ 	`"':;,]\)|\1|g
s|^-lterminfo$||g
s|\([ 	`"':;,]\)-ltermlib\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-ltermlib\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-ltermlib$|\1|g
s|^-ltermlib\([ 	`"':;,]\)|\1|g
s|^-ltermlib$||g
s|\([ 	`"':;,]\)-ltinfo\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-ltinfo\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-ltinfo$|\1|g
s|^-ltinfo\([ 	`"':;,]\)|\1|g
s|^-ltinfo$||g
s|\([ 	`"':;,]\)-ltermcap\([ 	`"':;,]\)|\1-lncurses\2|g
s|\([ 	`"':;,]\)-ltermcap\([ 	`"':;,]\)|\1-lncurses\2|g
s|\([ 	`"':;,]\)-ltermcap$|\1-lncurses|g
s|^-ltermcap\([ 	`"':;,]\)|-lncurses\1|g
s|^-ltermcap$|-lncurses|g
s|\([ 	`"':;,]\)-lncursesw\([ 	`"':;,]\)|\1-l__nonexistent__\2|g
s|\([ 	`"':;,]\)-lncursesw\([ 	`"':;,]\)|\1-l__nonexistent__\2|g
s|\([ 	`"':;,]\)-lncursesw$|\1-l__nonexistent__|g
s|^-lncursesw\([ 	`"':;,]\)|-l__nonexistent__\1|g
s|^-lncursesw$|-l__nonexistent__|g
s|\([ 	`"':;,]\)-lcurses\([ 	`"':;,]\)|\1-lncurses\2|g
s|\([ 	`"':;,]\)-lcurses\([ 	`"':;,]\)|\1-lncurses\2|g
s|\([ 	`"':;,]\)-lcurses$|\1-lncurses|g
s|^-lcurses\([ 	`"':;,]\)|-lncurses\1|g
s|^-lcurses$|-lncurses|g
s|\([ 	`"':;,]\)-lform\([ 	`"':;,]\)|\1-lgnuform\2|g
s|\([ 	`"':;,]\)-lform\([ 	`"':;,]\)|\1-lgnuform\2|g
s|\([ 	`"':;,]\)-lform$|\1-lgnuform|g
s|^-lform\([ 	`"':;,]\)|-lgnuform\1|g
s|^-lform$|-lgnuform|g
s|\([ 	`"':;,]\)-lpanel\([ 	`"':;,]\)|\1-lgnupanel\2|g
s|\([ 	`"':;,]\)-lpanel\([ 	`"':;,]\)|\1-lgnupanel\2|g
s|\([ 	`"':;,]\)-lpanel$|\1-lgnupanel|g
s|^-lpanel\([ 	`"':;,]\)|-lgnupanel\1|g
s|^-lpanel$|-lgnupanel|g
s|\([ 	`"':;,]\)-lmenu\([ 	`"':;,]\)|\1-lgnumenu\2|g
s|\([ 	`"':;,]\)-lmenu\([ 	`"':;,]\)|\1-lgnumenu\2|g
s|\([ 	`"':;,]\)-lmenu$|\1-lgnumenu|g
s|^-lmenu\([ 	`"':;,]\)|-lgnumenu\1|g
s|^-lmenu$|-lgnumenu|g
s|\([ 	`"':;,]\)\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1\2\3|g
s|\([ 	`"':;,]\)\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1\2\3|g
s|\([ 	`"':;,]\)\(/[^ 	`"':;,]*\)/\.$|\1\2|g
s|^\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1|g
s|^\(/[^ 	`"':;,]*\)/\.$|\1|g
s|\([ 	`"':;,]\)-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-I\2\3|g
s|\([ 	`"':;,]\)-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-I\2\3|g
s|\([ 	`"':;,]\)-I\(/[^ 	`"':;,]*\)/\.$|\1-I\2|g
s|^-I\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-I\1|g
s|^-I\(/[^ 	`"':;,]*\)/\.$|-I\1|g
s|\([ 	`"':;,]\)-isystem,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-isystem,\2\3|g
s|\([ 	`"':;,]\)-isystem,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-isystem,\2\3|g
s|\([ 	`"':;,]\)-isystem,\(/[^ 	`"':;,]*\)/\.$|\1-isystem,\2|g
s|^-isystem,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-isystem,\1|g
s|^-isystem,\(/[^ 	`"':;,]*\)/\.$|-isystem,\1|g
s|\([ 	`"':;,]\)-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-L\2\3|g
s|\([ 	`"':;,]\)-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-L\2\3|g
s|\([ 	`"':;,]\)-L\(/[^ 	`"':;,]*\)/\.$|\1-L\2|g
s|^-L\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-L\1|g
s|^-L\(/[^ 	`"':;,]*\)/\.$|-L\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,--rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,--rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.$|\1-Wl,--rpath,\2|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,--rpath,\1|g
s|^-Wl,--rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,--rpath,\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath-link,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath-link,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.$|\1-Wl,-rpath-link,\2|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath-link,\1|g
s|^-Wl,-rpath-link,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath-link,\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-rpath,\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.$|\1-Wl,-rpath,\2|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-rpath,\1|g
s|^-Wl,-rpath,\(/[^ 	`"':;,]*\)/\.$|-Wl,-rpath,\1|g
s|\([ 	`"':;,]\)-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-R\2\3|g
s|\([ 	`"':;,]\)-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-Wl,-R\2\3|g
s|\([ 	`"':;,]\)-Wl,-R\(/[^ 	`"':;,]*\)/\.$|\1-Wl,-R\2|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-Wl,-R\1|g
s|^-Wl,-R\(/[^ 	`"':;,]*\)/\.$|-Wl,-R\1|g
s|\([ 	`"':;,]\)-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-R\2\3|g
s|\([ 	`"':;,]\)-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|\1-R\2\3|g
s|\([ 	`"':;,]\)-R\(/[^ 	`"':;,]*\)/\.$|\1-R\2|g
s|^-R\(/[^ 	`"':;,]*\)/\.\([ 	`"':;,]\)|-R\1|g
s|^-R\(/[^ 	`"':;,]*\)/\.$|-R\1|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#|g
s|\([ 	`"':;,]\)/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|\([ 	`"':;,]\)/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2\3|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\2|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\1|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#|g
s|\([ 	`"':;,]\)/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|\([ 	`"':;,]\)/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2\3|g
s|\([ 	`"':;,]\)-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\2|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|^-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\1|g
s|\([ 	`"':;,]\)-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_include#\2\3|g
s|\([ 	`"':;,]\)-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__usr_include#\2\3|g
s|\([ 	`"':;,]\)-I/usr/include\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__usr_include#\2|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__usr_include#\1|g
s|^-I/usr/include\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__usr_include#\1|g
s|\([ 	`"':;,]\)-isystem,/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__usr_include#\2\3|g
s|\([ 	`"':;,]\)-isystem,/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__usr_include#\2\3|g
s|\([ 	`"':;,]\)-isystem,/usr/include\(/[^ 	`"':;,]*\)$|\1-isystem,_bUiLdLiNk__usr_include#\2|g
s|^-isystem,/usr/include\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__usr_include#\1|g
s|^-isystem,/usr/include\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__usr_include#\1|g
s|\([ 	`"':;,]\)-L/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__lib#\2\3|g
s|\([ 	`"':;,]\)-L/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__lib#\2\3|g
s|\([ 	`"':;,]\)-L/lib\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__lib#\2|g
s|^-L/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__lib#\1|g
s|^-L/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__lib#\1|g
s|\([ 	`"':;,]\)-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__usr_lib#\2\3|g
s|\([ 	`"':;,]\)-L/usr/lib\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__usr_lib#\2|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__usr_lib#\1|g
s|^-L/usr/lib\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__usr_lib#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,--rpath,/2022Q2-mips64abi64|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,--rpath,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,-rpath-link,/2022Q2-mips64abi64|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,-rpath-link,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,-rpath,/2022Q2-mips64abi64|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,-rpath,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,-R/2022Q2-mips64abi64|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,-R/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-R/2022Q2-mips64abi64|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-R/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/2022Q2-mips64abi64\2|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/2022Q2-mips64abi64\2|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/2022Q2-mips64abi64\2|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-R/2022Q2-mips64abi64\2|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-R/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib$|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib$|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib$|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib$|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib$|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib$|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib$|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-R/2022Q2-mips64abi64/lib$|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib$|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-R/2022Q2-mips64abi64/lib$|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib$|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib$|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib$|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib$|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib$|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib$|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib$|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-R/2022Q2-mips64abi64/lib$|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib$|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|^-R/2022Q2-mips64abi64/lib\([ 	`"':;,]\)|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-R/2022Q2-mips64abi64/lib$|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-Wl,-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2\3|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\2|g
s|^-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|^-R/2022Q2-mips64abi64/lib\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\1|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la\)$|\1/2022Q2-mips64abi64\2|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/2022Q2-mips64abi64\1|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-I/2022Q2-mips64abi64|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-I/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-I/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-isystem,/2022Q2-mips64abi64|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-isystem,/2022Q2-mips64abi64\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-isystem,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-I/2022Q2-mips64abi64\2|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-I/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-isystem,/2022Q2-mips64abi64\2|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/2022Q2-mips64abi64\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-isystem,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-L/2022Q2-mips64abi64|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-L/2022Q2-mips64abi64\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-L/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-L/2022Q2-mips64abi64\2|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/2022Q2-mips64abi64\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-L/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)/2022Q2-mips64abi64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|\([ 	`"':;,]\)/2022Q2-mips64abi64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|\([ 	`"':;,]\)/2022Q2-mips64abi64\(/[^ 	`"':;,]*\.la\)$|\1_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^/2022Q2-mips64abi64\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^/2022Q2-mips64abi64\(/[^ 	`"':;,]*\.la\)$|_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-I/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-I/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-I/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-I_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-I/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-I/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-I_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-isystem,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-isystem,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-isystem,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-isystem,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-isystem,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-L/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-L/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-L/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-L_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-L/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-L/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-L_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-Wl,--rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-Wl,--rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-Wl,-rpath-link,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-Wl,-rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-Wl,-rpath,/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-Wl,-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-Wl,-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-Wl,-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R_bUiLdLiNk__2022Q2-mips64abi64#\2\3|g
s|\([ 	`"':;,]\)-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|\1-R_bUiLdLiNk__2022Q2-mips64abi64#\2|g
s|^-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|^-R/2022Q2-mips64abi64\(/[^ 	`"':;,]*\)$|-R_bUiLdLiNk__2022Q2-mips64abi64#\1|g
s|\([ 	`"':;,]\)-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-I/[^ 	`"':;,]*$|\1|g
s|^-I/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-I/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-isystem,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-isystem,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-isystem,/[^ 	`"':;,]*$|\1|g
s|^-isystem,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-isystem,/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-L/[^ 	`"':;,]*$|\1|g
s|^-L/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-L/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,/[^ 	`"':;,]*$|\1|g
s|^-Wl,--rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,--rpath,/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,/[^ 	`"':;,]*$|\1|g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath-link,/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,/[^ 	`"':;,]*$|\1|g
s|^-Wl,-rpath,/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-rpath,/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-Wl,-R/[^ 	`"':;,]*$|\1|g
s|^-Wl,-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-Wl,-R/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1\2|g
s|\([ 	`"':;,]\)-R/[^ 	`"':;,]*$|\1|g
s|^-R/[^ 	`"':;,]*\([ 	`"':;,]\)|\1|g
s|^-R/[^ 	`"':;,]*$||g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,--rpath,/2022Q2-mips64abi64/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,--rpath,/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-rpath-link,/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,-rpath,/2022Q2-mips64abi64/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-rpath,/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,-R/2022Q2-mips64abi64/lib|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-R/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-R/2022Q2-mips64abi64/lib|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-R/2022Q2-mips64abi64/lib\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-R/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/2022Q2-mips64abi64/lib\2|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-R/2022Q2-mips64abi64/lib\2|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/2022Q2-mips64abi64/lib\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-R/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,--rpath,/2022Q2-mips64abi64/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,--rpath,/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-rpath-link,/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,-rpath,/2022Q2-mips64abi64/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-rpath,/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-Wl,-R/2022Q2-mips64abi64/lib|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-Wl,-R/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|\1-R/2022Q2-mips64abi64/lib|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\([ 	`"':;,]\)|-R/2022Q2-mips64abi64/lib\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#$|-R/2022Q2-mips64abi64/lib|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/2022Q2-mips64abi64/lib\2|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/2022Q2-mips64abi64/lib\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/2022Q2-mips64abi64/lib\2|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/2022Q2-mips64abi64/lib\2|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|\1-R/2022Q2-mips64abi64/lib\2|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/2022Q2-mips64abi64/lib\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64_lib#\(/[^ 	`"':;,]*\)$|-R/2022Q2-mips64abi64/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-I/usr/include\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-I/usr/include\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#$|\1-I/usr/include|g
s|^-I_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#$|-I/usr/include|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-isystem,/usr/include\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-isystem,/usr/include\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_include#$|\1-isystem,/usr/include|g
s|^-isystem,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-isystem,/usr/include\1|g
s|^-isystem,_bUiLdLiNk__usr_include#$|-isystem,/usr/include|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-L/usr/include\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-L/usr/include\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#$|\1-L/usr/include|g
s|^-L_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#$|-L/usr/include|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#$|\1-Wl,--rpath,/usr/include|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#$|-Wl,--rpath,/usr/include|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#$|\1-Wl,-rpath-link,/usr/include|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#$|-Wl,-rpath-link,/usr/include|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#$|\1-Wl,-rpath,/usr/include|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#$|-Wl,-rpath,/usr/include|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#$|\1-Wl,-R/usr/include|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#$|-Wl,-R/usr/include|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-R/usr/include\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|\1-R/usr/include\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#$|\1-R/usr/include|g
s|^-R_bUiLdLiNk__usr_include#\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#$|-R/usr/include|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/include\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/include\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la\)$|\1/usr/include\2|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/include\1|g
s|^_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\.la\)$|/usr/include\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/include\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/include\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-I/usr/include\2|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/include\1|g
s|^-I_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-I/usr/include\1|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/usr/include\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/usr/include\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-isystem,/usr/include\2|g
s|^-isystem,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/usr/include\1|g
s|^-isystem,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-isystem,/usr/include\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/include\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/include\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-L/usr/include\2|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/include\1|g
s|^-L_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-L/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/include\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/include\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/include\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/include\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/include\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/include\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/include\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/include\2|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/include\1|g
s|^-Wl,-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/include\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/include\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|\1-R/usr/include\2|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/include\1|g
s|^-R_bUiLdLiNk__usr_include#\(/[^ 	`"':;,]*\)$|-R/usr/include\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-I/lib\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-I/lib\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__lib#$|\1-I/lib|g
s|^-I_bUiLdLiNk__lib#\([ 	`"':;,]\)|-I/lib\1|g
s|^-I_bUiLdLiNk__lib#$|-I/lib|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-isystem,/lib\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-isystem,/lib\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__lib#$|\1-isystem,/lib|g
s|^-isystem,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-isystem,/lib\1|g
s|^-isystem,_bUiLdLiNk__lib#$|-isystem,/lib|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-L/lib\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-L/lib\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__lib#$|\1-L/lib|g
s|^-L_bUiLdLiNk__lib#\([ 	`"':;,]\)|-L/lib\1|g
s|^-L_bUiLdLiNk__lib#$|-L/lib|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__lib#$|\1-Wl,--rpath,/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,--rpath,/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#$|-Wl,--rpath,/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__lib#$|\1-Wl,-rpath-link,/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#$|-Wl,-rpath-link,/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__lib#$|\1-Wl,-rpath,/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,-rpath,/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#$|-Wl,-rpath,/lib|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,-R/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-Wl,-R/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__lib#$|\1-Wl,-R/lib|g
s|^-Wl,-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|-Wl,-R/lib\1|g
s|^-Wl,-R_bUiLdLiNk__lib#$|-Wl,-R/lib|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-R/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|\1-R/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__lib#$|\1-R/lib|g
s|^-R_bUiLdLiNk__lib#\([ 	`"':;,]\)|-R/lib\1|g
s|^-R_bUiLdLiNk__lib#$|-R/lib|g
s|\([ 	`"':;,]\)_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/lib\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/lib\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\.la\)$|\1/lib\2|g
s|^_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/lib\1|g
s|^_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\.la\)$|/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/lib\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/lib\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-I/lib\2|g
s|^-I_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/lib\1|g
s|^-I_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-I/lib\1|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/lib\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/lib\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-isystem,/lib\2|g
s|^-isystem,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/lib\1|g
s|^-isystem,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-isystem,/lib\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/lib\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/lib\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-L/lib\2|g
s|^-L_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/lib\1|g
s|^-L_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-L/lib\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/lib\2|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/lib\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/lib\2|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/lib\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/lib\2|g
s|^-Wl,-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/lib\1|g
s|^-Wl,-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/lib\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|\1-R/lib\2|g
s|^-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/lib\1|g
s|^-R_bUiLdLiNk__lib#\(/[^ 	`"':;,]*\)$|-R/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-I/usr/lib\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-I/usr/lib\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#$|\1-I/usr/lib|g
s|^-I_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#$|-I/usr/lib|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-isystem,/usr/lib\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-isystem,/usr/lib\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_lib#$|\1-isystem,/usr/lib|g
s|^-isystem,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-isystem,/usr/lib\1|g
s|^-isystem,_bUiLdLiNk__usr_lib#$|-isystem,/usr/lib|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-L/usr/lib\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-L/usr/lib\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#$|\1-L/usr/lib|g
s|^-L_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#$|-L/usr/lib|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#$|\1-Wl,--rpath,/usr/lib|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#$|-Wl,--rpath,/usr/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#$|\1-Wl,-rpath-link,/usr/lib|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#$|-Wl,-rpath-link,/usr/lib|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#$|\1-Wl,-rpath,/usr/lib|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#$|-Wl,-rpath,/usr/lib|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#$|\1-Wl,-R/usr/lib|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#$|-Wl,-R/usr/lib|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-R/usr/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|\1-R/usr/lib\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#$|\1-R/usr/lib|g
s|^-R_bUiLdLiNk__usr_lib#\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#$|-R/usr/lib|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/lib\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/usr/lib\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la\)$|\1/usr/lib\2|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/usr/lib\1|g
s|^_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\.la\)$|/usr/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/lib\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/usr/lib\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-I/usr/lib\2|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/usr/lib\1|g
s|^-I_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-I/usr/lib\1|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-isystem,/usr/lib\2|g
s|^-isystem,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/usr/lib\1|g
s|^-isystem,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-isystem,/usr/lib\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/lib\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/usr/lib\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-L/usr/lib\2|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/usr/lib\1|g
s|^-L_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-L/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/usr/lib\2|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/usr/lib\1|g
s|^-Wl,--rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/usr/lib\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/usr/lib\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/usr/lib\2|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/usr/lib\1|g
s|^-Wl,-rpath,_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/usr/lib\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/usr/lib\2|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/usr/lib\1|g
s|^-Wl,-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-Wl,-R/usr/lib\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/usr/lib\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|\1-R/usr/lib\2|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/usr/lib\1|g
s|^-R_bUiLdLiNk__usr_lib#\(/[^ 	`"':;,]*\)$|-R/usr/lib\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__2022Q2-mips64abi64#$|\1-I/2022Q2-mips64abi64|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-I/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#$|-I/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__2022Q2-mips64abi64#$|\1-isystem,/2022Q2-mips64abi64|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-isystem,/2022Q2-mips64abi64\1|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#$|-isystem,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__2022Q2-mips64abi64#$|\1-L/2022Q2-mips64abi64|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-L/2022Q2-mips64abi64\1|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#$|-L/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#$|\1-Wl,--rpath,/2022Q2-mips64abi64|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,--rpath,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#$|\1-Wl,-rpath-link,/2022Q2-mips64abi64|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,-rpath-link,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#$|\1-Wl,-rpath,/2022Q2-mips64abi64|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,-rpath,/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#$|\1-Wl,-R/2022Q2-mips64abi64|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#$|-Wl,-R/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64#$|\1-R/2022Q2-mips64abi64|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#$|-R/2022Q2-mips64abi64|g
s|\([ 	`"':;,]\)_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/2022Q2-mips64abi64\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\.la\)$|\1/2022Q2-mips64abi64\2|g
s|^_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/2022Q2-mips64abi64\1|g
s|^_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\.la\)$|/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-I/2022Q2-mips64abi64\2|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/2022Q2-mips64abi64\1|g
s|^-I_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-I/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-isystem,/2022Q2-mips64abi64\2|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/2022Q2-mips64abi64\1|g
s|^-isystem,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-isystem,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-L/2022Q2-mips64abi64\2|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/2022Q2-mips64abi64\1|g
s|^-L_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-L/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/2022Q2-mips64abi64\2|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/2022Q2-mips64abi64\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/2022Q2-mips64abi64\2|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/2022Q2-mips64abi64\2|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/2022Q2-mips64abi64\1|g
s|^-Wl,-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-Wl,-R/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/2022Q2-mips64abi64\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|\1-R/2022Q2-mips64abi64\2|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/2022Q2-mips64abi64\1|g
s|^-R_bUiLdLiNk__2022Q2-mips64abi64#\(/[^ 	`"':;,]*\)$|-R/2022Q2-mips64abi64\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\.la\)$|\1/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\.la\)$|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\2|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64#\(/[^ 	`"':;,]*\)$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|\1/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|\([ 	`"':;,]\)_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la\)$|\1/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la[ 	`"':;,]\)|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\.la\)$|/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-I_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-I/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-isystem,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-isystem,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-L_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-L/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,--rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,--rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,-rpath-link,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath-link,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,-rpath,_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-rpath,/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-Wl,-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-Wl,-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2\3|g
s|\([ 	`"':;,]\)-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|\1-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\2|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)\([ 	`"':;,]\)|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
s|^-R_bUiLdLiNk__sda3_jails_current_pkglinux-pkgsrc.2022Q2_editors_vim-share_work.mips64_.buildlink#\(/[^ 	`"':;,]*\)$|-R/sda3/jails/current/pkglinux-pkgsrc.2022Q2/editors/vim-share/work.mips64/.buildlink\1|g
