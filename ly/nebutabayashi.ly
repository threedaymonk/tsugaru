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
  title = "ねぶた囃子"
  subtitle = "Nebutabayashi"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.rocks – Revision REVISION"
}

partA = {
  \time 2/4

  ef'4 f'8 f' \sukui
  g'4 f'8( g')
  f'8 ef' \hajiki c' c' \sukui
  <c'\2>4 r
  g'4 f'8 f' \sukui
  g'4 f'8( g')

  f'8 ef' \hajiki c' c' \sukui
  <c'\2>4 r
  g'4 g'8 g' \sukui
  f'4 g'
  f'8 ef' \hajiki c' c' \sukui
  <c'\2>4 r

  <c'\2>8 bf \hajiki g \hajiki bf
  bf4 g
  bf4 ef'8 ef' \sukui
  c'4 r
  ef'8 ef'4 \sukui c'8
  ef'4 c'8 c'\sukui

  bf4 ef'8 ef' \sukui
  c'4. c'8
  ef'8 ef' \sukui c' c' \sukui
  ef'4 g'8 g' \sukui
  f'8 ef' \hajiki c' c' \sukui
  <c'\2>4 r

  \bar "|."
}

partB = {
  \time 2/4

  c'4 d'8 d' \sukui
  ef'4 d'
  <c'\2>8 bf \hajiki g g \sukui
  g4 r
  ef'4 d'8 d' \sukui
  ef'4 d'

  <c'\2>8 bf \hajiki g g \sukui
  g4 r
  ef'4 ef'8 ef' \sukui
  ef'4 d'
  <c'\2>8 bf \hajiki g g \sukui
  g4 r

  f8 ef \hajiki c \hajiki ef
  ef4 c
  ef4 bf8 bf \sukui
  g4 r
  bf8 bf4 \sukui g8
  bf4 g8 g\sukui

  f4 bf8 bf \sukui
  g4. g8
  c'8 c' \sukui g g \sukui
  c'4 ef'8 ef' \sukui
  <c'\2>8 bf \hajiki g g \sukui
  g4 r
}

\score {
  <<
    \new TabStaff {
      \set TabStaff.stringTunings = #niagariTuning
      \shamisenNotation
      \partA
    }
    \new TabStaff {
      \set TabStaff.stringTunings = #niagariTuning
      \shamisenNotation
      \partB
    }
  >>
}
