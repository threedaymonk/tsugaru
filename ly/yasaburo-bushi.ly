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
  title = "弥三郎節"
  subtitle = "Yasaburō Bushi"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Revision REVISION"
}

song = {
  \time 2/4

  <g d'>4 d'8 \sukui <g d'>

  \repeat volta 2 {
    <g d'>4 <g ef'>
    <g d'>8 d' \sukui \tuplet 3/2 { ef' d' \hajiki c' \hajiki }
    g8 c' \oshi g c' \oshi

    <g d'>4 d'8 \sukui <g d'>
    <g ef'>4 <g ef'>
    <g d'>8 d' \sukui \tuplet 3/2 { ef' d' \hajiki c' \hajiki }
    g8 c' \oshi g c' \oshi

    <g d'>4( g'8) \sukui <g g'>
    <g g'>4 <g af'>
    <g g'>4 g'8 \sukui <g g'>
    <g g'>4 g'8 <ef'\2>
    <g g'>4 c''8 \sukui <g c''>
    <g c''>4 <g c''>
    c''8 <af'\2> c'' c'' \sukui
    af'4^\first g'^\first

    <ef'\2>4 g'8 af'^\second
    g'8 g' \sukui g' <ef'\2>
    <d'\2>4 c'8 c' \sukui
    \tuplet 3/2 { ef'8 d' \hajiki c' \hajiki } c' af
    g4 c'8 c' \sukui
    \tuplet 3/2 { ef'8 d' \hajiki c' \hajiki } af g
    c'8 c' \sukui \tuplet 3/2 { ef'8 d' \hajiki c' \hajiki }
    d'8^\first d' \sukui ef'^\second ef' \sukui
    g8 c' \oshi d' d' \sukui
    \tuplet 3/2 { ef'8 d' \hajiki c' \hajiki } c' c' \sukui

    <g d'>4 d'8 \sukui <g ef'>^\second
    <g ef'>4 <g g'>^\second
    <g g'>4 c'8 d'
    \tuplet 3/2 { ef'8 d' \hajiki c' \hajiki } c' c' \sukui

    <g d'>4 d'8 \sukui <g d'>
  }

  <g d'>4 <g ef'>
  <g d'>8 d' \sukui \tuplet 3/2 { ef' d' \hajiki c' \hajiki }
  g8 c' \oshi g c' \oshi

  <g d'>4 d'8 \sukui <g d'>
  <g ef'>4 <g ef'>
  <g d'>8 d' \sukui \tuplet 3/2 { ef' d' \hajiki c' \hajiki }
  g8 c' \oshi g c' \oshi
  <g d'>2

  \bar "|."
}

\score {
  <<
    \new TabStaff {
      \set TabStaff.stringTunings = #niagariTuning
      \shamisenNotation
      \song
    }
  >>
}
