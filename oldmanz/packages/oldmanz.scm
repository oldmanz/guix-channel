(define-module (oldmanz packages oldmanz-st)
  #:use-module (gnu packages suckless)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (oldmanz packages))


(define-public gruvbox-dark-gtk-theme
  (package
    (name "gruvbox-dark-gtk-theme")
    (source (origin
              (method git-fetch)
              (uri
               (git-reference
                (url "https://github.com/shimmerproject/Greybird")
                (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "154qawiga792iimkpk3a6q8f4gm4r158wmsagkbqqbhj33kxgxhg"))))
    (build-system meson-build-system)
    (native-inputs
     (list gtk+
           `(,glib "bin") ; for "glib-compile-resources"
           librsvg
           pkg-config
           ruby-sass
           sassc))
    (home-page "https://shimmerproject.org/")
    (synopsis "Grey GTK+ theme based on Bluebird")
    (description "Greybird is a grey derivative of the Bluebird theme by the
Shimmer Project.  It supports GNOME, Unity, and Xfce.")
    (license (list license:gpl2+ license:cc-by-sa3.0))))


;(define-public oldmanz-st
;  (package
;    (inherit st)
;    (name "oldmanz-st")
;    (source
;      (origin
;        (method git-fetch)
;        (uri (git-reference
;          (url "https://github.com/Shourai/st.git")))))
;    (home-page "https://github.com/Shourai/st.git")
;    (synopsis "oldmanz version of st")))
