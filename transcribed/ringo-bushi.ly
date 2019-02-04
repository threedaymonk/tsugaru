\include "pre.ly"

\header {
  title = "りんご節"
  subtitle = "Ringo Bushi"
  meter = "2/4 二上り"
}

song = {
  \time 2/4

%{ shamisen
  tuning niagari

  0-4\1 0-8\3 1\2
  0\3 0 su 1 0
  4 i 4 su 6 iii 4
  4( 6) 6 7 ii
  10-4 ii 10-8 10
  7 ii 7 su 6 6

  4\3 6-16 su 4 ha 5-8\2 0\3 o
  1\2 0 ha 0\3 4
  <6\3 0\2>8 i <6\3 0\2> r <7\3 0\2> ii
  <6\3 0\2>4 i <4\3 0\2> i
  <6\3 0\2>8 <6\3 0\2> r 7\3 ii
  6\3 i 4 i 5\2 4\3

  <6\3 0\2>4 i 0-8\2 4\3 i o
  6-8\3 i 6 ha 6 6
  0\2 6\3 o 6 6
  7\3 ii 6 su 4 5\2
  4\3 4 su 0\2 4\3 o
  6\3 i 6 su 7 ii 7

  6\3 6 su 4 5\2 ii
  4\3 4 su 6 7 ii
  6 6 su 0\2 6\3 o
  6 6 su 6 6
  0\2 6\3 o 7 ii 6
  4 i 6-16 iii su 4 ha 5-8\2 ii 4\3 o

  0\3 0 su 0\1 1\2
  0\3 0 su 0 0
  0 0 su 1 0
  4 4 su 4 6 i
  7 ii su 7 0\2 6\3 o
  4 6-16 su 4 ha 5-8\2 ii 4\3 o

  0\3 0 su 0\2 0\3 o
  4 4 su 6 i 6
  7 ii 7 su 0\2 7\3 o
  6 i 6 su 4 6 iii
  4 4 su 0\2 4\3 o
  4 4 su 4 4

  0-4\1 0-8\3 1\2
  0\3 0 su 1 0
  4 4 su 6 4
  4( 6) 6 7 ii
  10-4 10-8 10
  7 7 su 6 6

  4 6-16 su 4 ha 5-8\2 ii 0\3 o
  1\2 0 ha 0\3 4
  <6\3 0\2>8 <6\3 0\2> r <7\3 0\2> ii
  <6\3 0\2>4 <4\3 0\2>
  <6\3 0\2>8 <6\3 0\2> r 7\3 ii
  6\3 4 5\2 4\3
  <6\3 0\2>-2
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
