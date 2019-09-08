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
  title = "花笠音頭"
  subtitle = "Hanagasa Ondo"
  composer = "山形県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

shamisenMusic = {
  ef'4 ef'8 f'^\third
  c' ef'16 ef' \hajiki c'8 bf
  c' c' \sukui c bf
  <g c'>4 <g c'>8 <g c'>

  \repeat volta 2 {
    ef'4 ef'8 f'^\third
    c' ef'16 ef' \hajiki c'8 bf
    c' c' \sukui c bf
    <g c'>4 <g c'>8 <g c'>

    c bf c' ef'
    f' f' \sukui g'^\first bf'^\third
    g'^\first g' \sukui g f'
    g'^\first g' \sukui g' bf'^\third

    g'^\first ef' f' f'
    g ef' \oshi bf c'
    g ef' \oshi g'^\third g'
    f' ef' c' bf

    c' c' \sukui c' bf
    g g \sukui c' c'
    bf bf \sukui g f
    g g \sukui c f

    g g \sukui g g
    bf bf \sukui c' ef'
    f' f' \sukui g g'^\third
    f' ef' bf c'

    ef' ef' \sukui f'^\third f'
    c' ef'16 ef' \hajiki c'8 bf
    c' c' \sukui c bf
    <g c'>4 <g c'>8 <g c'>

    ef'4 ef'8 f'^\third
    c' ef'16 ef' \hajiki c'8 bf
    c' c' \sukui c bf
    <g c'>4 <g c'>8 <g c'>
  }

  ef'4 ef'8 f'^\third
  c' ef'16 ef' \hajiki c'8 bf
  c' c' \sukui c bf
  <g c'>4 <g c'>
}
\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4
    \shamisenMusic
    \bar "|."
  }
}
