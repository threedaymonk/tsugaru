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
  title = "さくらさくら"
  subtitle = "Sakura Sakura"
  composer = "古歌"
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



    f'4^\first f'
    g'^\third r
    f'^\first f'
    g'^\third r

    f'^\first g'^\first
    af'^\second g'^\first
    f' g'8^\third f' \hajiki
    <df'\2>4^\second r

    c'4 af^\first
    c' df'^\first
    c' c'8 af^\first
    g4 r

    f'^\first g'^\first
    af'^\second g'^\first
    f' g'8 f' \hajiki
    <df'\2>4^\second r

    c'4 af^\first
    c' df'^\first
    c' c'8 af^\first
    g4 r

    f'4^\first f'
    g'^\third r
    f'^\first f'
    g'^\third r

    bf^\first c'
    df'^\first r
    g'8^\third f' \hajiki <df'\2>4
    <g c'>2
    }
}
