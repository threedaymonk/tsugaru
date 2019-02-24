\version "2.18.2"
\include "shamisen.ly"
\language "english"

#(set-global-staff-size 24)

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}

\header {
  title = "ねぶた囃子"
  subtitle = "Nebutabayashi"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.rocks – Revision REVISION"
}

partA = {
  \time 2/4

%{ shamisen
  tuning niagari

  <3\3>4 <4>8 <4> su
  <6>4 <4>8( <6>)
  <4>8 <3> ha <0> <0> su
  <4\2>4 r
  <6\3>4 <4>8 <4> su
  <6>4 <4>8( <6>)

  <4>8 <3> ha <0> <0> su
  <4\2>4 r
  <6\3>4 <6>8 <6> su
  <4>4 <6>
  <4>8 <3> ha <0> <0> su
  <4\2>4 r

  <4\2>8 <3> ha <0> ha <3>
  <3>4 <0>
  <3>4 <3\3>8 <3> su
  <0>4 r
  <3>8 <3>4 su <0>8
  <3>4 <0>8 <0>su

  <3\2>4 <3\3>8 <3> su
  <0>4. <0>8
  <3>8 <3> su <0> <0> su
  <3>4 <6>8 <6> su
  <4\3>8 <3> ha <0> <0> su
  <4\2>4 r

  \bar "|."
%}
}

partB = {
  \time 2/4

%{ shamisen
  tuning niagari

  <0\3>4 <2>8 <2> su
  <3>4 <2>
  <4\2>8 <3> ha <0> <0> su
  <0>4 r
  <3\3>4 <2>8 <2> su
  <3>4 <2>

  <4\2>8 <3> ha <0> <0> su
  <0>4 r
  <3\3>4 <3>8 <3> su
  <3>4 <2>
  <4\2>8 <3> ha <0> <0> su
  <0>4 r

  <4\1>8 <3> ha <0> ha <3>
  <3>4 <0>
  <3>4 <3\2>8 <3> su
  <0>4 r
  <3>8 <3>4 su <0>8
  <3>4 <0>8 <0>su

  <4\1>4 <3\2>8 <3> su
  <0>4. <0>8
  <0\3>8 <0> su <0\2> <0> su
  <0\3>4 <3>8 <3> su
  <4\2>8 <3> ha <0> <0> su
  <0\2>4 r
%}
}

\score {
  <<
    \new TabStaff {
      \set TabStaff.stringTunings = #niagariTuning
      \shamisenNotation
      \partA
    }
    \new TabStaff {
      \set TabStaff.stringTunings = #niagariTuning
      \shamisenNotation
      \partB
    }
  >>
}
