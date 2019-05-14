\version "2.18.2"
\include "shamisen.ly"
\language "english"

#(set-global-staff-size 22)

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}

\header {
  title = "津軽あいや節（陰旋律）"
  subtitle = "Tsugaru Aiya Bushi (minor scale)"
  composer = "青森県"
  meter = "3/8 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

taikoMusic = {
  c8 c' c' \sukui
  c'16 af g8 g \sukui
  f g g \sukui
  c16 g \oshi af8 af16( \sukui <c'\2>)
  <c'\2>8 <c'\2> <c'\2> \sukui
  <c'\2>16 <df'\2> \uchi f'8 f' \sukui
  f'16 <df'\2> <c'\2>8 <c'\2> \sukui
  <c'\2>16 <df'\2> \uchi f'8 f' \sukui
  <df'\2>16 f' \oshi g'8^\third g' \sukui
  g'16 f' \hajiki g'8 g' \sukui
  <c g g'>8 <c g g'>4
}

verseA = {
  f'8 g'^\first af'^\first \sukui
  c''^\first c'' c'' \sukui
  c'' c'' c'' \sukui
  c c'' c'' \sukui
  df''^\second c'' c'' \sukui
  df'' c'' c'' \sukui

  af' af' af' \sukui
  g' g' g' \sukui
  g' g' g' \sukui
  af' g' af' \sukui
  g'^\first f'^\first f' \sukui
  f' f' f' \sukui

  f' f' f' \sukui
  c g'^\first af'^\first \sukui
  c'' <af'\2> c'' \oshi
  af'^\first g' f' \sukui
  c g'^\first g' \sukui
  g' g' g' \sukui

  g' g' g' \sukui
  af' g' af' \sukui
  f'16 f' \sukui <df'\2>8 c' \oshi
  af' g' g' \sukui
  f' <df'\2> f' \oshi
  g' f' f' \sukui

  <df'\2>16 <df'\2> \sukui f'8 f' \sukui
  f'16 <df'\2> <c'\2>8 <c'\2> \sukui
  <c'\2> <c'\2> <c'\2> \sukui
  <c c'\2 c'>8 <c c'\2 c'>4
}

verseB = {
  f'8 g'^\first af'^\first \sukui
  c'' c'' c'' \sukui
  c c'' c'' \sukui
  c'' c'' c'' \sukui
  c'' c'' c'' \sukui
  df'' c'' c'' \sukui
  <af'\2> <g'\2> <af'\2> \sukui

  c'' c'' c'' \sukui
  af' g' g' \sukui
  af' g' g' \sukui
  f'16 f' \sukui <df'\2>8 f' \oshi
  f'16 <df'\2> <c'\2>8 <c'\2> \sukui
  <c'\2>16 <df'\2> \uchi f'8 f' \sukui

  g'^\first g' g' \sukui
  g' g' g' \sukui
  af'^\second g'^\first af'^\first \sukui
  c'' <af'\2> c'' \oshi
  af' g' f'^\first \sukui
  g'^\first g' g' \sukui

  g' g' g' \sukui
  c g' g' \sukui
  af' g' g' \sukui
  f'16 f' \sukui <df'\2>8 c' \oshi
  af' g' g' \sukui
  f'16 f' \sukui <df'\2>8 f' \oshi

  g' f' f' \sukui
  <df'\2>16 <df'\2> \sukui f'8 f' \sukui
  f'16 <df'\2> <c'\2>8 <c'\2> \sukui
  <c'\2> <c'\2> <c'\2> \sukui
  <c c'\2 c'>8 <c c'\2 c'>4
}

verseC = {
  f'8 g'^\first af'^\first \sukui
  c'' c'' c'' \sukui
  c c'' c'' \sukui
  df'' c'' c'' \sukui
  af' g' af'^\first \sukui
  c'' c'' c'' \sukui

  df'' c'' c'' \sukui
  af' af' g' \sukui
  f' f' g'16(^\third \sukui af')
  g' f' \hajiki c'8 c' \sukui
  af'^\first g' g' \sukui
  f' <df'\2> f' \oshi

  g' f' f' \sukui
  <df'\2>16 <df'\2> \sukui f'8 f' \sukui
  f'16 <df'\2> <c'\2>8 <c'\2> \sukui
  c <c'\2> <c'\2> \sukui
  <c c'\2 c'>8 <c c'\2 c'>4
  <c'\2>16 <df'\2> \sukui f'8 f' \sukui

  g'^\first g' g' \sukui
  g' g' g' \sukui
  af'^\second g'^\first af'^\first \sukui
  c'' <af'\2> c'' \oshi
  af' g' f' \sukui
  c g'^\first g' \sukui
  g' g' g' \sukui

  g' g' g' \sukui
  af' g' g' \sukui
  f'16 f' \sukui <df'\2>8 c' \oshi
  af' af' af' \sukui
  g' f' f' \sukui
  <df'\2>16 f' \oshi g'8 f' \sukui
  f'16 <df'\2> f'8 f' \sukui

  f'16 <df'\2> <c'\2>8 <c'\2> \sukui
  <c'\2> <c'\2> <c'\2> \sukui
  <c c'\2 c'>8 <c c'\2 c'>4
}

taiko = {
  \once \override Rest.stencil =
    #(lambda (grob)
      (grob-interpret-markup grob #{
        \markup { \raise #-0.8 "太鼓" }
      #}))
  r4
  \skip 8
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 3/8

    \mark \markup { \small "太鼓" }
    \taikoMusic
    \bar "||"
    \taiko
    \bar "||"
    \verseA
    \bar "||"
    \taiko
    \bar "||"
    \verseB
    \bar "||"
    \taiko
    \bar "||"
    \verseC
    \bar "||"
    \taiko
    \bar "|."
  }
}
