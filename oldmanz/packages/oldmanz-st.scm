(define-module (oldmanz packages oldmanz-st)
  #:use-module (gnu packages suckless)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (oldmanz packages))

(define-public oldmanz-st
  (package
    (inherit st)
    (name "oldmanz-st")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
          (url "https://github.com/Shourai/st.git")))))
    (home-page "https://github.com/Shourai/st.git")
    (synopsis "oldmanz version of st")))
