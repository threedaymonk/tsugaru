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
  title = "秋田音頭"
  subtitle = "Akita Ondo"
  composer = "秋田"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

%{ shamisen
tuning niagari

riffA = {
  <0\1>8 <0\2> o <3>16 ii <2> ha <0> ha <2>
  <0\1>8 <0\2> o <0> <2>
}

patternA = {
  \riffA
  <0\1>8 <4\2> i o <4> <4>
  <0\1>8 <4\2> o <4> <4>

  \riffA
  <0\1>8 <4\2> i o <4> <4>
  <0\1>8 <4\2> o <4> <4\3>

  <0\2>8 <4\3> o <6> iii <6>
  <0\2>8 <6\3> iii o <6>16 <4> ha <6\2>8 iii
}

patternB = {
  <0\2>8 <6\3> o <8> iii <8>
  <0\2>8 <6\3> o <6> <6>16 <6> ha

  <0\2>8 <9\3> o <10> iii <10>
  <0\2>8 <10\3> iii o <10>16 <9> ha <10\2>8 iii
}

patternC = {
  <0\2>8 <9\3> o <10> iii <9>16 <9> ha
  <0\2>8 <6\3> o <6> <8> iii
  <0\2>8 <6\3> i o <4> <4>
  \repeat unfold 2{
    <0\2>8 <4\3> o <6> iii <6>
    <0\2>8 <6\3> iii o <6>16 <4> ha <6\2>8 iii
  }
}

janjanjan = {
  <0\1 0\2 0\3>8 <0\1 0\2 0\3>
  <0\1 0\2 0\3>4 <0\1 0\2 0\3>8 <0\1 0\2 0\3>
}

intro = {
  \repeat volta 2 { \patternA | }
  \alternative {
    { \patternB \patternC }
    {
      <6\3>4 \janjanjan
    }
  }
}

verseA = {
  \patternA
  \patternB

  <0\2>8 <10\3> o <12> iii <12>
  <0\2>8 <10\3> o <10> <10>16 <10> ha

  <0\2>8 <12\3> o <14> iii <14>
  <0\2>8 <12\3> o <12> <12>16 <12> ha

  <0\2>8 <14\3> o <16> iii <16>
  <0\2>8 <16\3> o <16>16 <14> ha <16\2>8

  <0\2>8 <16\3> i o <16> <16>
  <0\2>8 <16\3> o <16> <18> iii
  <16\3>4 \janjanjan
}

verseB = {
  \patternA
  \patternB
  \patternC

  <0\2>8 <4\3> i o <6> iii <4>
  <6\3>4 \janjanjan
}

outro = {
  \riffA
  <0\1>8 <4\2> i o <4> <4>
  <0\1>8 <4\2> o <4> <4>

  \riffA
  <2\2>8( <4>) <0\1 4\2 0\3> <0\1 4\2 0\3>
  <0\1 4\2 0\3>4 <0\1 4\2 0\3>8 <0\1 4\2 0\3>
  <0\1 4\2 0\3>4 r
}

%}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    \intro

    \repeat volta 2 {
      \verseA
      \bar "||"
      \verseB
    }

    \outro
    \bar "|."
  }
}
