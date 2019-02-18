\version "2.18.2"
\include "shamisen.ly"

#(set-global-staff-size 24)

\header {
  tagline = ""
}

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}
