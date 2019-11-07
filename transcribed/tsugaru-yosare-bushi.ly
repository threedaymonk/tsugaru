
\version "2.18.2"
\include "shamisen.ly"
\language "english"

#(set-global-staff-size 22)

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}

\header {
  title = "津軽よされ節"
  subtitle = "Tsugaru Yosare Bushi"
  composer = "青森県"
  meter = "3/8 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

raisedMarker =
#(define-music-function
   (parser location label)
   (string?)
   #{
     \mark \markup \small \box #label
   #})

inlineMarker =
#(define-music-function
   (parser location label)
   (string?)
   #{
     \once \override Rest.stencil =
       #(lambda (grob)
         (grob-interpret-markup grob #{
           \markup { \raise #-0.8 #label }
         #}))
     r4
     \skip 8
   #})

%{ shamisen
taiko = {
  <0\1>8 <3> <4>
  <3\2> <4\1> <3\2>
  <4\1> \trtr { <4>16 <3> ha <0> su <0> ha }
  <0\1>8 <3> <4>

  <3\2> \trtr { <4>16 <3> ha <0> su <0> ha }
  <3>8 <4> <3\3> o
  <4\2> <4> <4> su
  <4\2> <4> <4> su

  <0\3>16 <3\2> <4>8 <4> su
  <4>16 <3> ha <4>8 <4> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
}

maeuta = {
  <0\1>8 <4\2> <3> su
  <4\1> <0\2> <3\3> o
  <4> <6> <9> su
  <10> <10> <10> su

  <9> <10\2> <9\3>
  <10> <10> <10> su
  <12> <10> <10> su
  <12>16 <12> su <10>8 <10> su

  <12> <10> <10> su
  <12> <10> <10> su
  <9> <6> <4> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
}

sectionEnd = {
  <0\1>8 <9\3> <10> su
  <9> <9> <10> su
  <9>16 <9> ha <6>8 <4> su

  <6> \trtr { <4>16 <3> ha <0> su <0> ha }
  <6>16 <6> su \trtr { <4> <3> ha <0> su <0> ha }
  <6>16 <6> su \trtr { <4> <3> ha <0> su <0> ha }
  \repeat percent 2 {
    <0>16 <3> ha \trtr { <0> <3> ha <0> su <3> ha }
  }

  <0>16 <3\2> <4>8 <4> su
  <4>16 <3> ha <4>8 <4> su
  <0\1 4\2 0\3>8 <0\1 4\2 0\3>4
}

honutaI = {
  <0\1>8 <4\2> <3> su
  <4\1> <0\2> <3\3> o
  <4> <6> <9> su
  <10> <10> <10> su

  <12> <10> <10> su
  <9>16 <9> ha <6>8 <4> su
  <6>16 <6> su \trtr { <4> <3> ha <0> su <0> ha }
  <4\2>8 <4> <4> su

  <4>16( <6>) \trtr { <4> <3> ha <0> su <0> ha }
  <4\1>8 <0\2> <0> su
  <0\1> <4\2> <3\3> o
  <4> <6> <9> su

  <10> <10> <10> su
  <9>16 <9> ha <6>8 <4> su
  <6> su \trtr { <4>16 <3> ha <0> su <0> ha }
  <4\2>8 <4> <4> su

  <4>16( <6>) \trtr { <4> <3> ha <0> su <0> ha }
  <4\1>8 <0\2> <0> su
  <0\1>8 <4\2> <3> su
  <4\1> <0\2> <3\3> o

  <4> <6> <9> su
  <10> <10> <10> su
  <12> <10> <10> su
  <9> <10\2> <9\3>

  <9> <6> <6> su
  <4> <6\2> <4\3>
  <9> <6> <6> su
  <4> <3> <4>

  <6> <6> <6> su
}

honutaII = {
  <0\1>8 <4\2> <3> su
  <4\1> <0\2> <3\3> o
  <4> <6> <9> su
  <10> <10> <10> su

  <12> <10> <10> su
  <9>16 <9> ha <6>8 <4> su
  <6> \trtr { <4>16 <3> ha <0> su <0> ha }
  <0>8 <4\2> <4> su

  <4>16( <6>) \trtr { <4> <3> ha <0> su <0> ha }
  <4\1>8 <0\2> <0> su
  <0\1> <4\2> <3\3> o
  <4> <6> <9> su

  <10> <10> <10> su
  <9>16 <9> ha <6>8 <4> su
  <6> \trtr { <4>16 <3> ha <0> su <0> ha }
  <0>8 <4\2> <4> su

  <4>16( <6>) \trtr { <4> <3> ha <0> su <0> ha }
  <4\1>8 <0\2> <0> su
  <0\1> <4\2> <3> su
  <4\1> <0\2> <3\3> o

  <4> <6> <9> su
  <10> <6> <6> su
  <4> <3> <4> su
  <6> <6> <9> su

  <6> <4> <6> su
  <4>16 <3> ha <0>8 <0> su
  <0\1> <4\3> <4> su
  <6>16 <6> ha <6>8 <6> su
}

atouta = {
  <0\1>8 <4\2> <3> su
  <4\1> <0\2> <3\3> o
  <4> <6> <6> su
  <0\1> <6\3> <9> su

  <10> <10> <10> su
  <9> <6> <4>
  <6> <6> <6> su
  <0\1> <6\3> <9> su

  <10> <10> <10> su
  <12> <10> <10> su
  <9> <6> <6> su
  <4> <3> <4>

  <9> <9> <4>
  <6> \trtr { <4>16 <3> ha <0> su <0> ha }
  <0>16 <0> su \trtr { <4\2> <3> ha <0> su <0> ha }
  <4\1>8 <0\2> <0> su

  <0\1> <4\2> <3\3> o
  <6> <6> <6> su
  <4> <3> <4>
  <6> <6> <6> su
}

shamisenMusic = {
  \raisedMarker "太鼓"
  \taiko
  \bar "||"
  \raisedMarker "前唄"
  \maeuta
  \bar "||"
  \inlineMarker "太鼓"
  \bar "||"
  \raisedMarker "本唄1"
  \honutaI
  \raisedMarker "※"
  \sectionEnd
  \bar "||"
  \inlineMarker "太鼓"
  \raisedMarker "本唄2"
  \honutaII
  \inlineMarker "※"
  \bar "||"
  \inlineMarker "太鼓"
  \bar "||"
  \raisedMarker "後唄"
  \atouta
  \inlineMarker "※"
  \bar "||"
  \inlineMarker "太鼓"
}
%}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 3/8
    \shamisenMusic
    \bar "|."
  }
}
