\include "pre.ly"
\language "english"

\header {
  title = "こきりこ節"
  subtitle = "Kokiriko Bushi"
  composer = "富山県"
  meter = "2/4 二上り"
}

song = {
  \time 2/4

%{ shamisen
  tuning niagari

  \repeat volta 2 {
    <0\3>4 <0>8 <3\2>
    <0\3>8 <0> su <4>4 iii
    <3>4 i <4> i
    <6>4 iii <6>8 <4> i

    <6>4 iii <4>8 i <3> i
    <0>8 <0> su <3> <4>
    <0>4 <0>8 <3\2>
    <0\2 0\3>2

    <0\2>4 <3>8 <0\3>
    \tuplet 3/2 { <3>8 <3> su <3> ha } <0>8 <3\2>
    <0> <0> <3> <3>
    <4\1>4 <0\2>8 <3>

    <0\3>4 <3>
    \tuplet 3/2 { <3>8 <3> su <3> ha } <0>8 <3\2>
    <0\3>8 <0> su <0\1> <3\2>
    <0\2 0\3>2

    <3\3>4 <4>8 <4>
    \tuplet 3/2 { <3>8 <3> su <3> ha } <0>8 <3\2>
    <0\3>8 <0> su <0\1> <3\2>
    <0\2 0\3>2

    <3\3>4 <4>8 <4>
    \tuplet 3/2 { <3>8 <3> su <3> ha } <0>8 <3\2>
    <0\3>8 <3> su <0\1> <3\2>
    <0\2 0\3>2
  }

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
