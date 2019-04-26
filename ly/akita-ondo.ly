\version "2.18.2"
\include "shamisen.ly"
\language "english"

#(set-global-staff-size 24)

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}

\header {
  title = "秋田音頭"
  subtitle = "Akita Ondo"
  composer = "秋田"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

riffA = {
  c8 g \oshi bf16^\second a \hajiki g \hajiki a
  c8 g \oshi g a
}

patternA = {
  \riffA
  c8 <c'\2>^\first \oshi <c'\2> <c'\2>
  c8 <c'\2> \oshi <c'\2> <c'\2>

  \riffA
  c8 <c'\2>^\first \oshi <c'\2> <c'\2>
  c8 <c'\2> \oshi <c'\2> f'

  g8 f' \oshi g'^\third g'
  g8 g'^\third \oshi g'16 f' \hajiki <d'\2>8^\third
}

patternB = {
  g8 g' \oshi a'^\third a'
  g8 g' \oshi g' g'16 g' \hajiki

  g8 bf' \oshi c''^\third c''
  g8 c''^\third \oshi c''16 bf' \hajiki <g'\2>8^\third
}

patternC = {
  g8 bf' \oshi c''^\third bf'16 bf' \hajiki
  g8 g' \oshi g' a'^\third
  g8 g'^\first \oshi f' f'
  \repeat unfold 2{
    g8 f' \oshi g'^\third g'
    g8 g'^\third \oshi g'16 f' \hajiki <d'\2>8^\third
  }
}

janjanjan = {
  <c g c'>8 <c g c'>
  <c g c'>4 <c g c'>8 <c g c'>
}

intro = {
  \repeat volta 2 { \patternA | }
  \alternative {
    { \patternB \patternC }
    {
      g'4 \janjanjan
    }
  }
}

verseA = {
  \patternA
  \patternB

  g8 c'' \oshi d''^\third d''
  g8 c'' \oshi c'' c''16 c'' \hajiki

  g8 d'' \oshi f''^\third f''
  g8 d'' \oshi d'' d''16 d'' \hajiki

  g8 f'' \oshi g''^\third g''
  g8 g'' \oshi g''16 f'' \hajiki <d''\2>8

  g8 g''^\first \oshi g'' g''
  g8 g'' \oshi g'' a''^\third
  g''4 \janjanjan
}

verseB = {
  \patternA
  \patternB
  \patternC

  g8 f'^\first \oshi g'^\third f'
  g'4 \janjanjan
}

outro = {
  \riffA
  c8 <c'\2>^\first \oshi <c'\2> <c'\2>
  c8 <c'\2> \oshi <c'\2> <c'\2>

  \riffA
  a8( <c'\2>) <c c'\2 c'> <c c'\2 c'>
  <c c'\2 c'>4 <c c'\2 c'>8 <c c'\2 c'>
  <c c'\2 c'>4 r
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    \intro

    \repeat volta 2 {
      \verseA
      \bar "||"
      \verseB
    }

    \outro
    \bar "|."
  }
}
