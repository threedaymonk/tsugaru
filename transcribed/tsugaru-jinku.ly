\include "pre.ly"
\language "english"

\header {
  title = "津軽甚句"
  subtitle = "Tsugaru Jinku"
  composer = "青森県"
  meter = "2/4 二上り（はずんで）"
}

song = {
  \time 2/4

%{ shamisen
  tuning niagari

  r8 <0\2> <0> <3>

  <0\3>8 <3> <4> i <6> iii
  <6\3>8 <6> su <4> i <3>
  <0\3>8 <0> su <3> <4> iii
  <3\3>8 <3>16 su <3> ha <0>8 <3\2>
  <0\3>8 <0> su <4> iii <3>16 <3> ha

  \repeat unfold 2 { <0\3>8 <0> su <0\1> <3\2> }

  <0\3>8 <0\2> <0> <3>

  \repeat volta 2 {
    <0\3>8 <3> <4> i <6> iii
    <6\3>8 <6> su <4> i <3>
    <0\3>8 <0> su <3> <4> iii
    <3\3>8 <3>16 su <3> ha <0>8 <3\2>
    <0\3>8 <0> su <4> iii <3>16 <3> ha

    \repeat unfold 2 { <0\3>8 <0> su <0\1> <3\2> }

    <0\3>8 <0> su <6> <6>
    <6\3>8 <6> su <6> <6>
    <6\3>8 <6> su <6> <9> iii
    <6\3>8 i <9> iii su <6> <6>
    <4\3>8 i <4> su <6> i <9> iii
    <6\3>8 <6> su <4> i <3>
    <0\3>8 <0> su <3> <4>
    <3\3>8 <3>16 su <3> ha <0>8 <3\2>
    <0\3>8 <0> su <4> iii <3>16 <3> ha

    \repeat unfold 2 { <0\3>8 <0> su <0\1> <3\2> }

    <0\3>8 <0\2> <0> <3>

    <0\3>8 <3> <4> i <6> iii
    <6\3>8 <6> su <4> i <3>
    <0\3>8 <0> su <3> <4> iii
    <3\3>8 <3>16 su <3> ha <0>8 <3\2>
    <0\3>8 <0> su <4> iii <3>16 <3> ha

    \repeat unfold 2 { <0\3>8 <0> su <0\1> <3\2> }

    <0\3>8 <0\2> <0> <3>
  }

  <0\3>8 <3> <4> i <6> iii
  <6\3>8 <6> su <4> i <3>
  <0\3>8 <0> su <3> <4> iii
  <3\3>8 <3>16 su <3> ha <0>8 <3\2>
  <0\3>8 <0> su <4> iii <3>16 <3> ha 

  <0\3>8 <0> su <0\1> <3\2>
  <0\1 0\2 0\3>4
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
