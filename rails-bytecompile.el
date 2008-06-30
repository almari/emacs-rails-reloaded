(require 'rails-reloaded)

(mapcar
 #'(lambda (file)
     (unless (or (string= (file-name-nondirectory file) "rails-run-tests.el")
                 (string= (file-name-nondirectory file) "rails-bytecompile.el"))
       (byte-compile-file file)))
 (directory-files "./" t "\\.el$"))