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
  <f c'>4 <f c'>8 r16 ef'
  f'4 g'8^\third g' \sukui
  <f c'>8 <f c'>4 bf8
  <f c'>4 bf8 bf \sukui

  <f c'>4 <f c'>8 r16 ef'
}

shamisenMusic = {
  \intro

  f'4 g'8^\third g' \sukui
  <f c'>8 <f c'>4 bf8

  \repeat volta 2 {
    \repeat percent 5 {
      <f c'>4 bf8 bf \sukui
    }
    <f c'>8 <f c'>4 bf8
    \repeat percent 2 {
      <f c'>4 bf8 bf \sukui
    }
    <f c'>4 <f c'>4
    c4 g'8^\third g' \sukui
    <f f'>4 g'8 g' \sukui
    <f f'>4 g'8 g' \sukui
    f' f' \sukui ef' ef' \sukui
    <f c'>4 bf8 <g\3>^\third
    bf8 c' \oshi ef'^\first ef'16 \sukui ef' \hajiki
    c'4 f'8^\third f' 
    ef'8^\first ef'16 \sukui ef' \hajiki c'8 bf^\third
    <f c'>4 c8 bf^\third
    <f c'>4 g'^\third
    g'8 g' r8 g'
    f'^\first ef' c' f'^\third
    ef'8^\first ef'16 \sukui ef' \hajiki c'8 bf^\third

    <f c'>4 bf8 bf \sukui
    \intro
    f'4 g'8^\third bf' \sukui
  }

  <f c''>4 <f c''>
  <f bf'> <f c''>
  <f c''>2
}
\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #honchoushiTuning
    \shamisenNotation
    \time 2/4
    \shamisenMusic
    \bar "|."
  }
}
