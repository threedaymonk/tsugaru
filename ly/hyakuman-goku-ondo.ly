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
  title = "百万石音頭"
  subtitle = "Hyakuman Goku Ondo"
  composer = "金沢市"
  meter = "2/4 二上り（はずんで）"
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

    \repeat volta 2 {
      c4 c'
      c c'
      c8 c' c c'
      c4 c'8 c'
      d' d' c' c'
      af af g af
      c' af g f
      g4 g8 g

      c4 r
      c c8 f
      g4 af8 g
      f4 g
      c8 c c' bf
      g4 bf
      c'8 c'\sukui c' c' \sukui
      g4 f

      f4 df'
      c' af
      c8 af c' af
      g4 f
      r8 df c f
      g4 bf
      c8 c' c' af
      g f g bf

      c c' c' af
      g f g bf
      c' c' \sukui g bf
      c'4 c'8 c'
      c c' c' bf
      c' c' df' df'
      c' af g f
      g af g4

      c8 f g f
      df4 c8 c
      c' c' g bf
      c'4 c'8 c' \sukui
      c4 d'8 d'
      c'4 af
      c'8 c' d' c'
      af g f g

      r c c f
      g4 c'8 f
      g4 g8 g \sukui
      g4 c'8 c'
    }

    c4 c'
    c c'
    c8 c' c c'
    c4 c'8 c'
    d' d' c' c'
    af af g af
    c' af g f
    g4 g

    \bar "|."
  }
}
