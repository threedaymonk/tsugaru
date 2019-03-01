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
  title = "津軽塩釜甚句"
  subtitle = "Tsugaru Shiogama Jinku"
  composer = "青森県"
  meter = "2/4 二上り（はずんで）"
  tagline = "https://shamisen.space – Revision REVISION"
}

song = {
  \time 2/4

  \repeat percent 2 {
    f'8 ef'16 ef' \hajiki c'8 ef' \sukui
    ef' bf c' c' \sukui
  }

  g8 f g bf \sukui
  c' bf c' c' \sukui
  g ef' f'^\first f' \sukui
  g'^\first bf'^\third g' c''^\third \sukui
  bf'^\first g' f' g'^\third
  \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } bf8 bf \sukui
  ef' c' ef' f'16(^\third \sukui g')

  f'8 ef' \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki }
  c'8 bf <c'\2> <c'\2> \sukui
  <c c'\2 c'>8 <c c'\2 c'>8 <c c'\2 c'>4

  \repeat volta 2 {
    \repeat percent 2 {
      f'8 ef'16 ef' \hajiki c'8 c' \sukui
      ef' bf c' c' \sukui
    }

    g8 f g bf \sukui
    c' bf <c'\2> <c'\2> \sukui
    <c c'\2 c'>8 <c c'\2 c'>8 <c c'\2 c'>4
    \bar "||"
    c8 bf <c'\2> <c'\2> \sukui
    g ef' f' f' \sukui

    g g'^\first g' g' \sukui
    g c''^\third bf'^\first bf' \sukui
    g d''^\third c''^\first c'' \sukui
    bf'^\first g' f' f' \sukui
    g'^\first bf'^\third g' g' \sukui
    f'^\first ef' f'^\first f'

    g bf'^\third g'^\first g' \sukui
    f' f' g'^\third g' \sukui
    g g'^\third f'^\first ef' \sukui
    f'8 ef'16 ef' \hajiki c'8 c' \sukui
    c g bf bf \sukui
    c' ef' f'^\first f' \sukui

    g'^\first bf'^\first c''^\third c'' \sukui
    bf'^\first g' f' f' \sukui
    g g'^\first bf'^\third bf' \sukui
    bf' bf' g'^\first g' \sukui
    g' f' f' g'^\third \sukui
    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } bf8 bf \sukui

    ef' c' ef' f'16(^\third \sukui g')
    f'8 ef' \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki }
    c'8 bf <c'\2> <c'\2> \sukui
    <c c'\2 c'>8 <c c'\2 c'>8 <c c'\2 c'>4
  }

  \repeat percent 2 {
    f'8 ef'16 ef' \hajiki c'8 c' \sukui
    ef' bf c' c' \sukui
  }
  g8 f g bf \sukui
  c' bf <c'\2> <c'\2> \sukui
  <c c'\2 c'>8 <c c'\2 c'>8 <c c'\2 c'>4

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
