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
  title = "虎丈さま"
  subtitle = "Torajosama"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Revision REVISION"
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    c4 c'8 bf
    c'4 ef'8 f'8
    g'^\third g' \sukui g' f'
    g'^\third g' \sukui g' f'^\third
    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 f'^\third
    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 bf

    c' c' \hajiki c' bf
    c'4 c

    \repeat volta 2 {
      c4 c'8 bf
      c'4 ef'8 f'
      g'^\third g' \sukui g' f'
      g'^\third g' \sukui g' f'^\third

      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 f'^\third
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 bf
      c' c' \hajiki c' bf
      c'4 c
      c4 c'8 bf
      c'4 c'8 c'

      c4 f'8^\third f'
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 c'
      c4 c'8 ef'
      f' f' \sukui g'^\third g'
      g4 g'8 f'^\third
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 c'

      c4 c'8 ef'
      f' f' \sukui g'^\third g'
      g4 g'8 f'^\third
      g'^\third g' \sukui g' f'
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 f'^\third
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 bf

      c'4 c
      c r
    }

    c4 c'8 bf
    c'4 ef'8 f'
    g'^\third g' \sukui g' f'
    g'^\third g' \sukui g' f'^\third

    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 f'^\third
    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } c'8 bf
    c'4 c8 bf
    <g c'>4 r

    \bar "|."
  }
}
