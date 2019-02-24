\include "pre.ly"
\language "english"

\header {
  title = "津軽塩釜甚句"
  subtitle = "Tsugaru Shiogama Jinku"
  composer = "青森県"
  meter = "2/4 二上り（はずんで）"
}

song = {
  \time 2/4

%{ shamisen
  tuning niagari

  \repeat percent 2 {
    <4\3>8 <3>16 <3> ha <0>8 <3> su
    <3> <3\2> <0\3> <0> su
  }

  <0\2>8 <4\1> <0\2> <3> su
  <0\3> <3\2> <0\3> <0> su
  <0\2> <3\3> <4> i <4> su
  <6> i <9> iii <6> <10> iii su
  <9> i <6> <4> <6> iii
  \trtr { <4>16 <3> ha <0> su <0> ha } <3\2>8 <3> su
  <3\3> <0> <3> <4>16( iii su <6>)

  <4>8 <3> \trtr { <4>16 <3> ha <0> su <0> ha }
  <0>8 <3\2> <4> <4> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>8 <0\1 4\2 0\3>4

  \repeat volta 2 {
    \repeat percent 2 {
      <4\3>8 <3>16 <3> ha <0>8 <0> su
      <3> <3\2> <0\3> <0> su
    }

    <0\2>8 <4\1> <0\2> <3> su
    <0\3> <3\2> <4> <4> su
    <0\1 4\2 0\3>8 <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
    \bar "||"
    <0\1>8 <3\2> <4> <4> su
    <0\2> <3\3> <4> <4> su

    <0\2> <6\3> i <6> <6> su
    <0\2> <10\3> iii <9> i <9> su
    <0\2> <12\3> iii <10> i <10> su
    <9> i <6> <4> <4> su
    <6> i <9> iii <6> <6> su
    <4> i <3> <4> i <4>

    <0\2> <9\3> iii <6> i <6> su
    <4> <4> <6> iii <6> su
    <0\2> <6\3> iii <4> i <3> su
    <4\3>8 <3>16 <3> ha <0>8 <0> su
    <0\1> <0\2> <3> <3> su
    <0\3> <3> <4> i <4> su

    <6> i <9> i <10> iii <10> su
    <9> i <6> <4> <4> su
    <0\2> <6\3> i <9> iii <9> su
    <9> <9> <6> i <6> su
    <6> <4> <4> <6> iii su
    \trtr { <4>16 <3> ha <0> su <0> ha } <3\2>8 <3> su

    <3\3> <0> <3> <4>16( iii su <6>)
    <4>8 <3> \trtr { <4>16 <3> ha <0> su <0> ha }
    <0>8 <3\2> <4> <4> su
    <0\1 4\2 0\3>8 <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
  }

  \repeat percent 2 {
    <4\3>8 <3>16 <3> ha <0>8 <0> su
    <3> <3\2> <0\3> <0> su
  }
  <0\2>8 <4\1> <0\2> <3> su
  <0\3> <3\2> <4> <4> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>8 <0\1 4\2 0\3>4

  \bar "|."
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
