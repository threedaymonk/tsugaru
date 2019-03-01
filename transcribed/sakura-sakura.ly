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
  title = "さくらさくら"
  subtitle = "Sakura Sakura"
  composer = "古歌"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Revision REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    %{ shamisen
    tuning niagari

    <4\3>4 i <4>
    <6> iii r
    <4> i <4>
    <6> iii r

    <4> i <6> i
    <7> ii <6> i
    <4> <6>8 iii <4> ha
    <5\2>4 ii r

    <0\3>4 <1\2> i
    <0\3> <1> i
    <0> <0>8 <1\2> i
    <0>4 r

    <4\3> i <6> i
    <7> ii <6> i
    <4> <6>8 <4> ha
    <5\2>4 ii r

    <0\3>4 <1\2> i
    <0\3> <1> i
    <0> <0>8 <1\2> i
    <0>4 r

    <4\3>4 i <4>
    <6> iii r
    <4> i <4>
    <6> iii r

    <3\2> i <0\3>
    <1> i r
    <6>8 iii <4> ha <5\2>4
    <0\2 0\3>2
    %}
  }
}
