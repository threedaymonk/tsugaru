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
  title = "津軽じょんから旧節"
  subtitle = "Tsugaru Jonkara Kyūbushi"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Revision REVISION"
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    r4 ef8 f^\third
    g4 <c'\2>8^\third <c'\2> \sukui
    \tuplet 3/2 { \trtr { <c'\2>8 bf \hajiki g \hajiki } } g bf \sukui
    c'4 f'8^\third f' \sukui
    \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf
    <c'\2>4^\third \trtr { <c'\2>16 bf \hajiki g \sukui g \hajiki }

    g4 bf8 f^\third
    g4 \trtr { f16 ef \hajiki c \sukui c \hajiki }
    c4 ef8 f^\third
    g4 <c'\2>8^\third <c'\2> \sukui
    \tuplet 3/2 { \trtr { <c'\2>8 bf \hajiki g \hajiki } } g bf \sukui
    c'4 f'8^\third f' \sukui

    \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf
    <c'\2>4^\third f'8 ef'16 \sukui ef' \hajiki
    c'8 ef' \uchi c' bf
    <c'\2>4^\third <c c'\2 c'>8 <c c'\2 c'>
    <c c'\2 c'>4 r8 <c c'\2 c'>8

    \repeat volta 2 {
      <c c'\2 c'>4 <c c'\2 c'>

      <c c'\2 c'>4 c'8 f'^\third \sukui
      \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf
      <c'\2>4^\third \trtr { <c'\2>16 bf \hajiki g \sukui g \hajiki }
      g4 bf8 f^\third
      g4 \trtr { f16 ef \hajiki c \sukui c \hajiki }
      c4 ef8 f^\third

      g4 <c'\2>8^\third <c'\2> \sukui
      \tuplet 3/2 { \trtr { <c'\2>8 bf \hajiki g \hajiki } } g bf \sukui
      c'4 f'8^\third f' \sukui
      \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf
      <c'\2>4^\third f'8 ef'16 \sukui ef' \hajiki
      c'8 ef' \uchi c' bf

      <c'\2>4^\third <c c'\2 c'>8 <c c'\2 c'>
      <c c'\2 c'>4 r8 <c c'\2 c'>8
      <c c'\2 c'>4 c8 bf \oshi
      <c'\2>4^\third g8 ef' \oshi
      f'4 g'8 bf' \sukui
      c''4 c''8 d'' \sukui

      d''4 d''8 f''^\third \sukui
      d''4 c''8 d''^\third \sukui
      c''4 bf'8 <g'\2>^\third
      <f'\2>4 <g'\2>8 bf'
      \repeat unfold 2 { c''4 c''8 d''^\third \sukui }

      c''4 c''8 bf' \sukui
      g'4 f'8 ef' \sukui
      <c g c'>4 r8 <c g c'>8
      <c g c'>4 ef8 f^\third
      g4 <c'\2>8^\third <c'\2> \sukui
      \tuplet 3/2 { \trtr { <c'\2>8 bf \hajiki g \hajiki } } g bf \sukui

      c'4 f'8^\third f' \sukui
      \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf
      <c'\2>4^\third <c c'\2 c'>8 <c c'\2 c'>
      <c c'\2 c'>4 r8 <c c'\2 c'>8
      <c c'\2 c'>4 c8 bf \oshi
      <c'\2>4^\third g8 ef' \oshi

      f'4 g'8 bf' \sukui
      c''4 c''8 d''^\third \sukui
      c''4 c''8 bf' \sukui
      g'4 f'8 ef' \sukui
      f'4^\third c'8 c' \sukui
      \tuplet 3/2 { \trtr { <c'\2>8 bf \hajiki g \hajiki } } g bf \sukui

      <c'\2>4^\third g8 ef' \oshi
      f'4 g'8 bf'^\third \sukui
      g'4 f'8 ef' \sukui
      c'4 g8 bf \sukui
      <c'\2>4^\third f'8^\third ef' \sukui
      f'4^\third f'8 f' \sukui

      \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf
      <c'\2>4^\third <c c'\2 c'>8 <c c'\2 c'>
      <c c'\2 c'>4 r8 <c c'\2 c'>8
    }

    <c c'\2 c'>4 <c c'\2 c'>
    <c c'\2 c'>4 c'8 f'^\third \sukui
    \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf

    <c'\2>4 c'8 f'^\third \sukui
    \tuplet 3/2 { \trtr { f'8 ef' \hajiki c' \hajiki } } c' bf
    <c'\2>4^\third <c c'\2 c'>8 <c c'\2 c'>
    <c c'\2 c'>2

    \bar "|."
  }
}
