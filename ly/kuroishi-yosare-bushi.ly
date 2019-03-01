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
  title = "黒石よされ節"
  subtitle = "Kuroishi Yosare Bushi"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Revision REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    c'8. bf16 g bf \uchi c'8
    g8. f16^\third g bf \uchi c'8
    g8. f16^\third g8. ef16
    f8.^\third g16 \trtr { c'\2^\third bf \hajiki g \hajiki bf }
    c'8 c' \sukui \trtr { f'16 ef' \hajiki c' \hajiki bf }
    g bf \uchi c'8 g8. f16

    g8. c'16 c'8. bf16

    \repeat volta 2 {
      \repeat unfold 2 { g bf \uchi c'8 g8. f16 }
      g8. ef16 f8. g16
      \trtr { c'16\2 bf \hajiki g \hajiki bf } c'8 c' \sukui
      \trtr { f'16 ef' \hajiki c' \hajiki bf } g bf \uchi c'8

      g8. f16 c'8 c'16 c' \hajiki
      <c g c'>8. f16 g8. bf16
      c'8. ef'16^\first f'8.^\first g'16^\third
      g'8. g'16 \sukui f'8. g'16
      g'8.^\third f'16^\third \trtr { f'16 ef' \hajiki c' \hajiki bf }
      c'8. ef'16 f'8. g'16^\third

      g'8. f'16 \trtr { f'16 ef' \hajiki c' \hajiki bf }
      g8. bf16 c'8. ef'16
      c'8. ef'16 f'^\third( g') f' ef' \hajiki
      c'8. c'16 c'8. bf16
      \repeat unfold 2 { g bf \uchi c'8 g8. f16 }

      g8. ef16 f8. g16
      \trtr { c'16\2 bf \hajiki g \hajiki bf } c'8 c' \sukui
      \trtr { f'16 ef' \hajiki c' \hajiki bf } g bf \uchi c'8
      g8. f16^\third g8. <c g c'>16
      <c g c'>8. bf'16^\first bf'8. g'16^\first
      g'8. bf'16 bf'8. c''16^\third

      c''8. c''16 \sukui bf'8. c''16^\third
      c''8. g'16^\first g'8. bf'16^\third
      bf'8. bf'16 \sukui g'8. bf'16^\third
      g'8.^\third f'16^\third \trtr { f'16 ef' \hajiki c' \hajiki bf }
      g8. bf16 c'8. ef'16
      c'8. ef'16 f'( g') f' ef' \hajiki

      c'8. c'16 c'8. bf16
    }

    \repeat unfold 2 { g bf \uchi c'8 g8. f16 }
    g8. ef16 f8. g16
    \trtr { c'16\2 bf \hajiki g \hajiki bf } c'8 c' \sukui
    \trtr { f'16 ef' \hajiki c' \hajiki bf } g bf \uchi c'8

    g8. f16 g8. <c g c'>16

    <c g c'>2 \fermata

    \bar "|."
  }
}
