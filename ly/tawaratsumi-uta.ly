\version "2.18.2"
\include "shamisen.ly"
\language "english"

#(set-global-staff-size 20)

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}

\header {
  title = "俵つみ唄"
  subtitle = "Tawaratsumi Uta"
  composer = "岩手県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

endingCommon = {
  <c'\2>8 <c c'\2 c'> <c c'\2 c'>4
}

endingA = {
  f'8 bf <c'\2> <c c'\2 c'>
  \endingCommon
}

endingB = {
  c'8 bf <c'\2> ef' \oshi
  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki
  c'8 bf <c'\2> <c c'\2 c'>
  \endingCommon
}

endingC = {
  c'8 bf <c'\2> ef' \oshi
  f'8^\third f' f'16 ef' \hajiki c' \sukui c' \hajiki
  c'8 bf <c'\2> <c c'\2 c'>
  \endingCommon
}

Intro = {
  c4 g'8.^\third f'16
  g'8^\third g' \sukui f' ef'
  c'8 c' \sukui ef f^\third
  g8 bf <c'\2>^\third ef'

  \endingA
}

Interlude = {
  c'8 c' c c'
  ef'8^\first f'^\first g'^\third g' \sukui
  g'8 g' f'^\first bf'^\third
  bf'8 f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingB
}

verseStartA = {
  c8 g'16^\third g' \sukui g'8 g' \sukui
  g'8 g' g' g' \sukui
  f'8 ef' c8 r8 \keshi
  g'8^\first bf'^\third g'^\first g' \sukui

  f'8^\first ef' f'^\first f' \sukui
  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki
}

VerseA = {
  \verseStartA

  c'8 bf <c'\2> <c'\2> \sukui
  ef'8 ef' f'^\third f' \sukui

  f'16 ef' \hajiki c' \sukui c' \hajiki
  ef'8^\first f'^\first \sukui g'^\third f'^\third
  f'16 ef' \hajiki c' \sukui c' \hajiki
  c'8 c' ef'^\first ef'16 \sukui ef' \hajiki

  ef'8 f'^\first g'^\third g' \sukui
  g'8 g' f'^\first bf'^\third
  bf'8 f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingC
}

VerseB = {
  \verseStartA
  \endingC
}

verseStartB = {
  c8 c' ef' ef'16 \sukui ef' \hajiki
  ef'8 f'^\first g'^\third g' \sukui
  g'8 g' f'^\first bf'^\third
  bf'8 f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki
}

VerseC = {
  \verseStartB

  c'8 bf <c'\2> ef' \oshi
  ef'8 <c'\2> <c'\2> ef' \oshi
  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingC
}

VerseD = {
  \verseStartB
  \endingC
}

VerseE = {
  c8 c' ef' ef' \sukui
  g'8 g' f'^\first f' \sukui
  g'8^\third g' f'^\third ef'^\first \sukui
  f'8^\third f' f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingC
}

VerseF = {
  \verseStartB

  c'8 bf <c'\2> ef' \oshi
  ef'8 <c'\2> <c'\2> ef' \oshi
  ef'8 <c'\2> <c'\2> ef' \oshi
  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingC
}

VerseG = {
  c8 c' ef' ef' \sukui
  g'8 f' g' g' \sukui
  g'8 g' f'^\first f' \sukui
  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  c'8 bf <c'\2> <c'\2> \sukui
  ef'8 ef' f'^\third f' \sukui
  f'16 ef' \hajiki c' \sukui c' \hajiki ef'8 f' \sukui
  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingB
}

VerseH = {
  c8 c' ef' ef'16 \sukui ef' \hajiki
  ef'8 f' g g' \oshi
  g'8 g' g bf'^\third \oshi
  bf'8 f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingC
}

ExtraChons = {
  <c c'\2 c'>8 <c c'\2 c'> <c c'\2 c'>4
}

VerseI = {
  g'8^\third f' g'^\third g' \sukui
  f'8^\first ef'^\first f'^\first bf'^\third

  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki
  c'8 bf <c'\2> <c'\2> \sukui
  ef'8 ef' f'^\third f' \sukui

  f'16 ef' \hajiki c' \sukui c' \hajiki ef'8 f'
  g'8^\third f'^\third f'16 ef' \hajiki c' \sukui c' \hajiki

  \endingC
}

Outro = {
  c'8 c' ef f
  g8 bf <c'\2> ef'16 ef' \sukui
  \endingA
}

piece = {
  \Intro
  \Interlude \bar "||"
  \VerseA \bar "||"
  \Interlude \bar "||"
  \VerseB
  \VerseC
  \VerseD \bar "||"
  \Interlude \bar "||"
  \VerseB
  \VerseD
  \VerseE
  \VerseD
  \VerseF
  \VerseG
  \VerseH
  \VerseF \ExtraChons
  \VerseI \bar "||"
  \Outro \bar "|."
}
\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    \piece
  }
}
