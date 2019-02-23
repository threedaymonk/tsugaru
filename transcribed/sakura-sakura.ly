\include "pre.ly"
\language "english"

\header {
  title = "さくらさくら"
  subtitle = "Sakura Sakura"
  composer = "古歌"
  meter = "2/4 二上り"
}

song = {
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

\score {
  <<
    \new TabStaff {
      \set TabStaff.stringTunings = #niagariTuning
      \shamisenNotation
      \song
    }
  >>
}
