
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

taiko = \relative c {
  c8 ef f
  bf f bf
  f \trtr { f16 ef \hajiki c \sukui c \hajiki }
  c8 ef f

  bf \trtr { <c\2>16 bf \hajiki g \sukui g \hajiki }
  bf8 <c\2> ef \oshi
  <c\2> <c\2> <c\2> \sukui
  <c\2> <c\2> <c\2> \sukui

  c16 bf <c\2>8 <c\2> \sukui
  <c\2>16 bf \hajiki <c\2>8 <c\2> \sukui
  <c, c'\2 c>8 <c c'\2 c>4
}

maeuta = \relative c {
  c8 <c'\2> bf \sukui
  f g ef' \oshi
  f g bf^\first \sukui
  c^\first c c \sukui

  bf <g\2> bf
  c^\first c c \sukui
  d^\third c c \sukui
  d16 d \sukui c8 c \sukui

  d c c \sukui
  d c c \sukui
  bf g f \sukui
  <c, c'\2 c>8 <c c'\2 c>4
}

sectionEnd = \relative c {
  c8 bf'' c \sukui
  bf bf c \sukui
  bf16 bf \hajiki g8 f \sukui
  g8^\third g f^\first \sukui

  g^\third \trtr { f16^\third ef \hajiki c \sukui c \hajiki }
  g'16 g \sukui \trtr { f ef \hajiki c \sukui c \hajiki }
  g'16 g \sukui \trtr { f ef \hajiki c \sukui c \hajiki }
  \repeat percent 2 {
    c16 ef \hajiki \trtr { c ef \hajiki c \sukui ef \hajiki }
  }

  c16 bf <c\2>8 <c\2> \sukui
  <c\2>16 bf \hajiki <c\2>8 <c\2> \sukui
  <c, c'\2 c>8 <c c'\2 c>4
}

honutaI = \relative c {
  c8 <c'\2> bf \sukui
  f g ef' \oshi
  f g bf^\first \sukui
  c^\first c c \sukui

  d^\third c c \sukui
  bf16 bf \hajiki g8 f^\first \sukui
  g16^\third g \sukui \trtr { f^\third ef \hajiki c \sukui c \hajiki }
  <c\2>8^\third <c\2> <c\2> \sukui

  <c\2>16( <d\2>) \trtr { <c\2> bf \hajiki g \sukui g \hajiki }
  f8 g g \sukui
  c, <c'\2> ef \oshi
  f g bf^\first \sukui

  c^\first c c \sukui
  bf16 bf \hajiki g8 f^\first \sukui
  g^\third \trtr { f16^\third ef \hajiki c \sukui c \hajiki }
  <c\2>8^\third <c\2> <c\2> \sukui

  <c\2>16( <d\2>) \trtr { <c\2> bf \hajiki g \sukui g \hajiki }
  f8 g g \sukui
  c,8 <c'\2> bf \sukui
  f g ef' \oshi

  f g bf^\first \sukui
  c^\first c c \sukui
  d^\third c c \sukui
  bf <g\2> c

  bf g g \sukui
  f <d\2> f
  bf^\third g^\first g \sukui
  f^\first ef^\first f^\first

  g^\first g g \sukui
}

honutaII = \relative c {
  c8 <c'\2> bf \sukui
  f g ef' \oshi
  f g bf^\first \sukui
  c^\first c c \sukui

  d^\third c c \sukui
  bf16 bf \hajiki g8 f^\first \sukui
  g^\third \trtr { f16^\third ef \hajiki c \sukui c \hajiki }
  c8 <c\2>^\third <c\2> \sukui

  <c\2>16( <d\2>) \trtr { <c\2> bf \hajiki g \sukui g \hajiki }
  f8 g g \sukui
  c, <c'\2> ef \oshi
  f g bf \sukui

  c c c \sukui
  bf16 bf \hajiki g8 f \sukui
  g \trtr { f16 ef \hajiki c \sukui c \hajiki }
  c8 <c\2> <c\2> \sukui

  <c\2>16( <d\2>) \trtr { <c\2> bf \hajiki g \sukui g \hajiki }
  f8 g g \sukui
  c, <c'\2> bf \sukui
  f g ef' \oshi

  f g bf^\first \sukui
  c^\third g g \sukui
  f ef f^\first \sukui
  g^\first g bf^\third \sukui

  g^\first f^\first g^\third \sukui
  f16^\third ef \hajiki c8 c \sukui
  c, f'^\first f \sukui
  g16^\first g \hajiki g8 g \sukui
}

atouta = \relative c {
  c8 <c'\2> bf \sukui
  f g ef' \oshi
  f g g \sukui
  c,, g''^\first bf^\first \sukui

  c^\first c c \sukui
  bf g f
  g g g \sukui
  c,, g'' bf \sukui

  c c c \sukui
  d c c \sukui
  bf g g \sukui
  f ef f

  bf^\third bf f^\first
  g^\third \trtr { f16^\third ef \hajiki c \sukui c \hajiki }
  c16 c \sukui \trtr { <c\2> bf \hajiki g \sukui g \hajiki }
  f8 g g \sukui

  c, <c'\2> ef \oshi
  g g g \sukui
  f ef f
  g^\first g g \sukui
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
\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 3/8
    \shamisenMusic
    \bar "|."
  }
}
