\include "pre.ly"
\language "english"

\header {
  title = "虎丈さま"
  subtitle = "Torajosama"
  composer = "青森県"
  meter = "2/4 二上り"
}

song = {
  \time 2/4

%{ shamisen
  tuning niagari

  <0\1>4 <0\3>8 <3\2>
  <0\3>4 <3>8 <4>8
  <6> iii <6> su <6> <4>
  <6> iii <6> su <6> <4> iii
  \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <4> iii
  \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <3\2>

  <0\3> <0> ha <0> <3\2>
  <0\3>4 <0\1>

  \repeat volta 2 {
    <0\1>4 <0\3>8 <3\2>
    <0\3>4 <3>8 <4>
    <6> iii <6> su <6> <4>
    <6> iii <6> su <6> <4> iii

    \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <4> iii
    \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <3\2>
    <0\3> <0> ha <0> <3\2>
    <0\3>4 <0\1>
    <0\1>4 <0\3>8 <3\2>
    <0\3>4 <0>8 <0>

    <0\1>4 <4\3>8 iii <4>
    \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <0>
    <0\1>4 <0\3>8 <3>
    <4> <4> su <6> iii <6>
    <0\2>4 <6\3>8 <4> iii
    \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <0>

    <0\1>4 <0\3>8 <3>
    <4> <4> su <6> iii <6>
    <0\2>4 <6\3>8 <4> iii
    <6> iii <6> su <6> <4>
    \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <4> iii
    \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <3\2>

    <0\3>4 <0\1>
    <0> r
  }

  <0\1>4 <0\3>8 <3\2>
  <0\3>4 <3>8 <4>
  <6> iii <6> su <6> <4>
  <6> iii <6> su <6> <4> iii

  \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <4> iii
  \trtr { <4>16 <3> ha <0> su <0> ha } <0>8 <3\2>
  <0\3>4 <0\1>8 <3\2>
  <0\2 0\3>4 r
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
