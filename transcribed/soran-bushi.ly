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
  title = "ソーラン節"
  subtitle = "Sōran Bushi"
  composer = "北海道"
  meter = "2/4 本調子"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

%{ shamisen
intro = {
  <0\2 0\3>4 <0\2 0\3>8 r16 <3\3>
  <4>4 <6>8 iii <6> su
  <0\2 0\3>8 <0\2 0\3>4 <4\2>8
  <0\2 0\3>4 <4\2>8 <4> su

  <0\2 0\3>4 <0\2 0\3>8 r16 <3\3>
  <4>4 <6>8 iii <6> su
}

shamisenMusic = {
  \intro

  <0\2 0\3>8 <0\2 0\3>4 <4\2>8

  \repeat volta 2 {
    \repeat percent 5 {
      <0\2 0\3>4 <4\2>8 <4> su
    }
    <0\2 0\3>8 <0\2 0\3>4 <4\2>8
    \repeat percent 2 {
      <0\2 0\3>4 <4\2>8 <4> su
    }
    <0\2 0\3>4 <0\2 0\3>4
    <0\1>4 <6\3>8 iii <6> su
    <0\2 4\3>4 <6\3>8 <6> su
    <0\2 4\3>4 <6\3>8 <6> su
    <4\3> <4> su <3> <3> su
    <0\2 0\3>4 <4\2>8 <6\1> iii
    <4\2>8 <0\3> o <3> i <3>16 su <3> ha
    <0>4 <4>8 iii <4> 
    <3>8 i <3>16 su <3> ha <0>8 <4\2> iii
    <0\2 0\3>4 <0\1>8 <4\2> iii
    <0\2 0\3>4 <6\3> iii
    <6>8 <6> r8 <6>
    <4> i <3> <0> <4> iii
    <3>8 i <3>16 su <3> ha <0>8 <4\2> iii

    <0\2 0\3>4 <4\2>8 <4> su
    \intro
  }

  <0\2 10\3>4 <0\2 10\3>
  <0\2 9\3> <0\2 10\3>
  <0\2 10\3>2
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
