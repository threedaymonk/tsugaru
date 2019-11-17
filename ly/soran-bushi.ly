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
  title = "ソーラン節"
  subtitle = "Sōran Bushi"
  composer = "北海道"
  meter = "2/4 本調子"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

intro = {
  <g c'>4 <g c'>8 r16 ef'
  f'4 g'8^\third g' \sukui
  <g c'>8 <g c'>4 <c'\2>8
  <g c'>4 <c'\2>8 <c'\2> \sukui

  <g c'>4 <g c'>8 r16 ef'
  f'4 g'8^\third g' \sukui
}

shamisenMusic = {
  \intro

  <g c'>8 <g c'>4 <c'\2>8

  \repeat volta 2 {
    \repeat percent 5 {
      <g c'>4 <c'\2>8 <c'\2> \sukui
    }
    <g c'>8 <g c'>4 <c'\2>8
    \repeat percent 2 {
      <g c'>4 <c'\2>8 <c'\2> \sukui
    }
    <g c'>4 <g c'>4
    c4 g'8^\third g' \sukui
    <g f'>4 g'8 g' \sukui
    <g f'>4 g'8 g' \sukui
    f' f' \sukui ef' ef' \sukui
    <g c'>4 <c'\2>8 <g\3>^\third
    <c'\2>8 c' \oshi ef'^\first ef'16 \sukui ef' \hajiki
    c'4 f'8^\third f' 
    ef'8^\first ef'16 \sukui ef' \hajiki c'8 <c'\2>^\third
    <g c'>4 c8 <c'\2>^\third
    <g c'>4 g'^\third
    g'8 g' r8 g'
    f'^\first ef' c' f'^\third
    ef'8^\first ef'16 \sukui ef' \hajiki c'8 <c'\2>^\third

    <g c'>4 <c'\2>8 <c'\2> \sukui
    \intro
  }

  <g c''>4 <g c''>
  <g bf'> <g c''>
  <g c''>2
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
