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
  title = "花笠音頭"
  subtitle = "Hanagasa Ondo"
  composer = "山形県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

%{ shamisen
shamisenMusic = {
  <3\3>4 <3>8 <4> iii
  <0\3> <3>16 <3> ha <0>8 <3\2>
  <0\3> <0> su <0\1> <3\2>
  <0\2 0\3>4 <0\2 0\3>8 <0\2 0\3>

  \repeat volta 2 {
    <3\3>4 <3>8 <4> iii
    <0\3> <3>16 <3> ha <0>8 <3\2>
    <0\3> <0> su <0\1> <3\2>
    <0\2 0\3>4 <0\2 0\3>8 <0\2 0\3>

    <0\1> <3\2> <0\3> <3>
    <4\3> <4> su <6> i <9> iii
    <6\3> i <6> su <0\2> <4\3>
    <6\3> i <6> su <6> <9> iii

    <6\3> i <3> <4> <4>
    <0\2> <3\3> o <3\2> <0\3>
    <0\2> <3\3> o <6> iii <6>
    <4> <3> <0> <3\2>

    <0\3> <0> su <0> <3\2>
    <0\2> <0> su <0\3> <0>
    <3\2> <3> su <0> <4\1>
    <0\2> <0> su <0\1> <4>

    <0\2> <0> su <0> <0>
    <3> <3> su <0\3> <3>
    <4\3> <4> su <0\2> <6\3> iii
    <4> <3> <3\2> <0\3>

    <3\3> <3> su <4> iii <4>
    <0\3> <3>16 <3> ha <0>8 <3\2>
    <0\3> <0> su <0\1> <3\2>
    <0\2 0\3>4 <0\2 0\3>8 <0\2 0\3>

    <3\3>4 <3>8 <4> iii
    <0\3> <3>16 <3> ha <0>8 <3\2>
    <0\3> <0> su <0\1> <3\2>
    <0\2 0\3>4 <0\2 0\3>8 <0\2 0\3>
  }

  <3\3>4 <3>8 <4> iii
  <0\3> <3>16 <3> ha <0>8 <3\2>
  <0\3> <0> su <0\1> <3\2>
  <0\2 0\3>4 <0\2 0\3>
}
%}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4
    \shamisenMusic
    \bar "|."
  }
}
