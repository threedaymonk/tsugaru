\include "pre.ly"
\language "english"

\header {
  title = "黒石よされ節"
  subtitle = "Kuroishi Yosare Bushi"
  meter = "2/4 二上り"
}

song = {
  \time 2/4

%{ shamisen
  tuning niagari

  0-8.\3 3-16\2 0 3 u 0-8\3
  0-8.\2 4-16\1 iii 0\2 3 u 0-8\3
  0-8.\2 4-16\1 iii 0-8.\2 3-16\1
  4-8.\1 iii 0-16\2 \trtr { 4 iii 3 ha 0 ha 3 }
  0-8\3 0 su \trtr { 4-16 3 ha 0 ha 3\2 }
  0 3 u 0-8\3 0-8.\2 4-16\1

  0-8.\2 0-16\3 0-8. 3-16\2

  \repeat volta 2 {
    \repeat unfold 2 { 0 3 u 0-8\3 0-8.\2 4-16\1 }
    0-8.\2 3-16\1 4-8. 0-16\2
    \trtr { 4-16\2 3 ha 0 ha 3 } 0-8\3 0 su
    \trtr { 4-16 3 ha 0 ha 3\2 } 0 3 u 0-8\3

    0-8.\2 4-16\1 0-8\3 0-16 0 ha
    <0\1 0\2 0\3>8. 4-16\1 0-8.\2 3-16
    0-8.\3 3-16 i 4-8. i 6-16 iii
    6-8.\3 6-16 su 4-8. 6-16
    6-8.\3 iii 4-16 iii \trtr { 4-16 3 ha 0 ha 3\2 }
    0-8.\3 3-16 4-8. 6-16 iii

    6-8.\3 4-16 \trtr { 4-16 3 ha 0 ha 3\2 }
    0-8.\2 3-16 0-8.\3 3-16
    0-8.\3 3-16 4 iii( 6) 4 3 ha
    0-8.\3 0-16 0-8. 3-16\2
    \repeat unfold 2 { 0 3 u 0-8\3 0-8.\2 4-16\1 }

    0-8.\2 3-16\1 4-8. 0-16\2
    \trtr { 4-16\2 3 ha 0 ha 3 } 0-8\3 0 su
    \trtr { 4-16 3 ha 0 ha 3\2 } 0 3 u 0-8\3
    0-8.\2 4-16\1 iii 0-8.\2 <0\1 0\2 0\3>16
    <0\1 0\2 0\3>8. 9-16 i 9-8. 6-16 i
    6-8.\3 9-16 9-8. 10-16 iii

    10-8.\3 10-16 su 9-8. 10-16 iii
    10-8.\3 6-16 i 6-8. 9-16 iii
    9-8.\3 9-16 su 6-8. 9-16 iii
    6-8.\3 iii 4-16 iii \trtr { 4-16 3 ha 0 ha 3\2 }
    0-8.\2 3-16 0-8.\3 3-16
    0-8.\3 3-16 4( 6) 4 3 ha

    0-8.\3 0-16 0-8. 3-16\2
  }

  \repeat unfold 2 { 0 3 u 0-8\3 0-8.\2 4-16\1 }
  0-8.\2 3-16\1 4-8. 0-16\2
  \trtr { 4-16\2 3 ha 0 ha 3 } 0-8\3 0 su
  \trtr { 4-16 3 ha 0 ha 3\2 } 0 3 u 0-8\3

  0-8.\2 4-16\1 0-8.\2 <0\1 0\2 0\3>16

  <0\1 0\2 0\3>4 \fermata
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
