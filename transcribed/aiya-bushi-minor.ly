\version "2.18.2"
\include "shamisen.ly"
\language "english"

#(set-global-staff-size 20)

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}

\header {
  title = "津軽あいや節（陰旋律）"
  subtitle = "Tsugaru Aiya Bushi (minor scale)"
  composer = "青森県"
  meter = "3/8 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

%{ shamisen
taikoMusic = {
  <0\1>8 <0\3> <=> su
  <0>16 <1\2> <0>8 <=> su
  <4\1> <0\2> <=> su
  <0\1>16 <0\2> o <1>8 <1>16( su <4>)
  <4\2>8 <4> <4> su
  <4\2>16 <5> u <4\3>8 <4> su
  <4\3>16 <5\2> <4>8 <4> su
  <4\2>16 <5> u <4\3>8 <4> su
  <5\2>16 <4\3> o <6>8 iii <6> su
  <6\3>16 <4> ha <6>8 <6> su
  <0\1 0\2 6\3>8 <0\1 0\2 6\3>4
}

verseA = {
  <4\3>8 <6> i <7> i su
  <10\3> i <=> <=> su
  <10\3> <=> <=> su
  <0\1> <10\3> <=> su
  <11\3> ii <10> <=> su
  <11\3> <10> <=> su

  <7\3> <=> <=> su
  <6\3> <=> <=> su
  <6\3> <=> <=> su
  <7\3> <6> <7> su
  <6\3> i <4> i <=> su
  <4\3> <=> <=> su

  <4\3> <=> <=> su
  <0\1> <6\3> i <7> i su
  <10\3> <11\2> <10\3> o
  <7\3> i <6> <4> su
  <0\1> <6\3> i <=> su
  <6\3> <=> <=> su

  <6\3> <=> <=> su
  <7\3> <6> <7> su
  <4\3>16 <=> su <5\2>8 <0\3> o
  <7\3> <6> <=> su
  <4\3> <5\2> <4\3> o
  <6\3> <4> <=> su

  <5\2>16 <=> su <4\3>8 <=> su
  <4\3>16 <5\2> <4>8 <=> su
  <4\2> <4> <4> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
}

verseB = {
  <4\3>8 <6> i <7> i su
  <10\3> <=> <=> su
  <0\1> <10\3> <=> su
  <10\3> <=> <=> su
  <10\3> <=> <=> su
  <11\3> <10> <=> su
  <11\2> <10> <11> su

  <10\3> <=> <=> su
  <7\3> <6> <=> su
  <7\3> <6> <=> su
  <4\3>16 <=> su <5\2>8 <4\3> o
  <4\3>16 <5\2> <4>8 <=> su
  <4\2>16 <5> u <4\3>8 <4> su

  <6\3> i <=> <=> su
  <6\3> <=> <=> su
  <7\3> ii <6> i <7> i su
  <10\3> <11\2> <10\3> o
  <7\3> <6> <4> i su
  <6\3> i <=> <=> su

  <6\3> <=> <=> su
  <0\1> <6\3> <=> su
  <7\3> <6> <=> su
  <4\3>16 <=> su <5\2>8 <0\3> o
  <7\3> <6> <=> su
  <4\3>16 <=> su <5\2>8 <4\3> o

  <6\3> <4> <=> su
  <5\2>16 <=> su <4\3>8 <=> su
  <4\3>16 <5\2> <4>8 <=> su
  <4\2> <4> <4> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
}

verseC = {
  <4\3>8 <6> i <7> i su
  <10\3> <=> <=> su
  <0\1> <10\3> <=> su
  <11\3> <10> <=> su
  <7\3> <6> <7> i su
  <10\3> <=> <=> su

  <11\3> <10> <=> su
  <7\3> <=> <6> su
  <4> <4> <6>16( iii su <7>)
  <6> <4> ha <0>8 <=> su
  <7\3> i <6> <=> su
  <4> <5\2> <4\3> o

  <6\3> <4> <=> su
  <5\2>16 <=> su <4\3>8 <=> su
  <4\3>16 <5\2> <4>8 <=> su
  <0\1> <4\2> <=> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
  <4\2>16 <5> su <4\3>8 <=> su

  <6\3> i <=> <=> su
  <6\3> <=> <=> su
  <7\3> ii <6> i <7> i su
  <10\3> <11\2> <10\3> o
  <7\3> <6> <4> su
  <0\1> <6\3> i <=> su
  <6\3> <=> <=> su

  <6\3> <=> <=> su
  <7\3> <6> <=> su
  <4\3>16 <=> su <5\2>8 <0\3> o
  <7\3> <=> <=> su
  <6\3> <4> <=> su
  <5\2>16 <4\3> o <6>8 <4> su
  <4\3>16 <5\2> <4\3>8 <=> su

  <4\3>16 <5\2> <4\2>8 <=> su
  <4\2> <=> <=> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
}

%}

taiko = {
  \once \override Rest.stencil =
    #(lambda (grob)
      (grob-interpret-markup grob #{
        \markup { \raise #-0.8 "太鼓" }
      #}))
  r4
  \skip 8
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 3/8

    \mark \markup { \small "太鼓" }
    \taikoMusic
    \bar "||"
    \taiko
    \bar "||"
    \verseA
    \bar "||"
    \taiko
    \bar "||"
    \verseB
    \bar "||"
    \taiko
    \bar "||"
    \verseC
    \bar "||"
    \taiko
    \bar "|."
  }
}
