(vl-load-com)

(defun _CheckAddTrustedPath (newPath / trusted)
  (if (and (setq trusted (getvar 'trustedpaths))
           (not (vl-string-search newPath trusted))
      )
    (setvar 'trustedpaths
            (strcat (vl-string-right-trim ";" trusted) ";" newPath)
    )
  )
)
(_CheckAddTrustedPath "C:\\ProgramData\\Autodesk\\ApplicationPlugins\\...")