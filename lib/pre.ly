\version "2.18.2"
#(set-global-staff-size 24)

\language "english"
\include "shamisen.ly"

\header {
  tagline = ""
}

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAPGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}
