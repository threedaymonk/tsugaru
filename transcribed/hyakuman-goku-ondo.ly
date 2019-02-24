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
  title = "百万石音頭"
  subtitle = "Hyakuman Goku Ondo"
  composer = "金沢市"
  meter = "2/4 二上り（はずんで）"
  tagline = "https://shamisen.rocks – Revision REVISION"
}

partA = {
  \time 2/4

%{ shamisen
  tuning niagari

  \repeat volta 2 {

    <0\1>4 <0\3>
    <0\1> <0\3>
    <0\1>8 <0\3> <0\1> <0\3>
    <0\1>4 <0\3>8 <0>
    <2> <2> <0> <0>
    <1\2> <1> <0> <1>
    <0\3> <1\2> <0> <4\1>
    <0\2>4 <0>8 <0>

    <0\1>4 r
    <0> <0>8 <4>
    <0\2>4 <1>8 <0>
    <4\1>4 <0\2>
    <0\1>8 <0> <0\3> <3\2>
    <0>4 <3>
    <0\3>8 <0>su <0> <0> su
    <0\2>4 <4\1>

    <4\1>4 <1\3>
    <0\3> <1\2>
    <0\1>8 <1\2> <0\3> <1\2>
    <0\2>4 <4\1>
    r8 <1> <0> <4>
    <0\2>4 <3>
    <0\1>8 <0\3> <0> <1\2>
    <0> <4\1> <0\2> <3>

    <0\1> <0\3> <0> <1\2>
    <0\2> <4\1> <0\2> <3\2>
    <0\3> <0> su <0\2> <3>
    <0\3>4 <0>8 <0>
    <0\1> <0\3> <0> <3\2>
    <0\3> <0> <1> <1>
    <0> <1\2> <0> <4\1>
    <0\2> <1> <0>4

    <0\1>8 <4> <0\2> <4\1>
    <1>4 <0>8 <0>
    <0\3> <0> <0\2> <3>
    <0\3>4 <0>8 <0> su
    <0\1>4 <2\3>8 <2>
    <0\3>4 <1\2>
    <0\3>8 <0> <2> <0>
    <1\2> <0> <4\1> <0\2>

    r <0\1> <0> <4>
    <0\2>4 <0\3>8 <4\1>
    <0\2>4 <0>8 <0> su
    <0>4 <0\3>8 <0>
  }

  <0\1>4 <0\3>
  <0\1> <0\3>
  <0\1>8 <0\3> <0\1> <0\3>
  <0\1>4 <0\3>8 <0\3>
  <2> <2> <0> <0>
  <1\2> <1> <0> <1>
  <0\3> <1\2> <0> <4\1>
  <0\2>4 <0>

  \bar "|."
%}
}

\score {
  <<
    \new TabStaff {
      \set TabStaff.stringTunings = #niagariTuning
      \shamisenNotation
      \partA
    }
  >>
}
