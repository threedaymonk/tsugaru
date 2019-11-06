\version "2.18.2"
\include "shamisen.ly"
\include "articulate.ly"
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
  title = "津軽たんと節"
  subtitle = "Tsugaru Tanto Bushi"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Version REVISION"
}

\layout {
  \context { \Score \remove "Bar_number_engraver" }
}

shamisenMusic = {
  c'8 c' ef4
  ef8 ef f bf
  bf f f bf
  bf f g f

  ef c ef4
  ef8 ef f bf
  bf f f bf
  bf f g <c'\2>

  bf g ef4
  ef8 ef f bf
  bf f f bf
  bf f g f

  ef c ef4
  ef8 ef f bf
  g bf <c'\2> ef'16 ef' \sukui
  f' ef' \hajiki c bf \oshi <c'\2>8 g16 c'' \oshi

  c''8 c'' c'' bf'16 bf' \hajiki
  g'8 f' g' f'16 ef' \hajiki
  c'8 bf <c'\2> <c c'\2 c'>
  <c'\2> <c c'\2 c'> <c c'\2 c'>4

  r8 <c c'\2 c'> <c c'\2 c'>4

  \bar "||"

  c8 c16 bf \oshi <c'\2>8 <c'\2> \sukui
  c c16 bf \oshi <c'\2>8 <c'\2> \sukui
  c c16 bf \oshi <c'\2>8 ef'16 ef' \sukui
  f' ef' \sukui c bf \oshi <c'\2>8 <c c'\2 c'>
  <c'\2> <c c'\2 c'> <c c'\2 c'>4

  \bar "||"

  c8 c16 g \oshi bf8 bf \sukui
  c' ef' f' f'\sukui
  g' bf' d'' d'' \sukui
  c'' bf' c'' c'' \sukui

  c'' c'' bf'16 bf' \sukui c'' bf' \hajiki
  g'8 g' g' bf'16 bf'\sukui
  <g'\2> bf' \oshi <g'\2> bf' \oshi c''8 c'' \sukui
  c'' bf' c'' bf'16 bf' \hajiki

  g'8 f' g' f'16 ef' \hajiki
  c'8 bf <c'\2> f'16 f' \sukui
  f'8 f' f'16 ef' \hajiki c' \sukui c' \hajiki
  c'8 bf g g \sukui

  c c16 g \oshi bf8 bf \sukui
  c' ef' f' f'\sukui
  g' bf' c'' c'' \sukui
  bf' g' f' f' \sukui

  c g16 bf' \oshi bf'8 g16 g' \oshi
  g'8 g16 f' \oshi g'8 f'16 ef' \hajiki
  c'8 bf \tuplet 3/2 { <c'\2>16 bf \hajiki g \hajiki } bf8
  <c'\2> g16 ef' \oshi f'8 g16 g' \oshi

  bf'8 g16 g' \oshi
  f'8 g16 ef' \oshi c'8 bf
  <c'\2> <c c'\2 c'> <c'\2> <c c'\2 c'>
  <c c'\2 c'>4

  r8 <c c'\2 c'> <c c'\2 c'>4

  \bar "||"

  c8 c16 bf \oshi <c'\2>8 <c'\2> \sukui
  c c16 bf \oshi <c'\2>8 <c'\2> \sukui
  c c16 bf \oshi <c'\2>8 ef'16 ef' \sukui
  f' ef' \sukui c bf \oshi <c'\2>8 <c'\2> \sukui

  <c'\2> <c'\2> c g'16 g' \sukui
  g'8 f' g' f'16 ef' \hajiki
  c'8 bf <c'\2> ef'16 ef' \sukui
  f' ef' \hajiki c bf \oshi <c'\2>8 <c'\2> \sukui

  <c'\2> <c'\2> g bf
  bf bf <c'\2> ef' \oshi
  <c'\2> <c'\2> <c'\2>16 bf g \sukui g \hajiki
  <c'\2>8 bf <c'\2> ef' \oshi

  f' g' c bf'16 bf' \sukui
  bf'8 c'' bf' g16 g' \oshi
  f'8 g' g' f'16 ef' \hajiki
  c'8 bf \tuplet 3/2 { <c'\2>16 bf \hajiki g \hajiki } bf8

  <c'\2> g16 ef' \oshi f'8 g16 g' \oshi
  bf'8 g16 g' \oshi f'8 g16 ef' \oshi
  c'8 bf <c'\2> <c c'\2 c'>
  <c'\2> <c c'\2 c'> <c c'\2 c'>4

  \bar "||"

  c'8 c' ef4
  ef8 ef f bf
  bf f f bf
  bf f g f

  ef c ef4
  ef8 ef f bf
  g bf <c'\2> ef'16 ef' \sukui
  f' ef' \hajiki c bf \oshi  <c'\2>8 g16 c'' \oshi

  c''8 c'' c'' bf'16 bf' \hajiki
  g'8 f' g' f'16 ef' \hajiki
  c'8 bf <c'\2> <c c'\2 c'>
  <c'\2> <c c'\2 c'> <c c'\2 c'>4
}
\score {
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \tupletUp
    \shamisenNotation
    \time 2/4
    \shamisenMusic
    \bar "|."
  }
}

\score {
  \new Staff {
    \set Staff.midiInstrument = #"shamisen"
    \articulate {
      \unfoldRepeats {
        \shamisenMusic
      }
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
