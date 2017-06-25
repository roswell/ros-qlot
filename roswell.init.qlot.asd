(defsystem :roswell.init.qlot)
(defpackage :roswell.init.qlot
  (:use :cl)
  (:export :install-quicklisp))
(in-package :roswell.init.qlot)

(defun install-quicklisp (&optional (path (merge-pathnames #P".roswell/lisp/quicklisp/" *default-pathname-defaults*))
                            (from (roswell:opt "quicklisp")))
  (dolist (relative '("" "quicklisp/" "local-init/"))
    (dolist (file (uiop:directory-files (merge-pathnames "*.*" (merge-pathnames relative from))))
      (uiop:copy-file file (make-pathname
                            :defaults (ensure-directories-exist (merge-pathnames relative path))
                            :name (pathname-name file)
                            :type (pathname-type file)))))
  (ensure-directories-exist (merge-pathnames ".roswell/local-projects/")))

(defun qlfile ()
  (if (probe-file "qlfile")
      (format t "qlfile already exists~%")
      (with-open-file (out "qlfile"
                           :direction :output
                           :if-exists :error)
        (format out "ql :all ~A~%" (ql:dist-version "quicklisp")))))

(defun qlot (&rest _)
  (declare (ignore _))
  (install-quicklisp)
  (qlfile))
