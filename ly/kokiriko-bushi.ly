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
  title = "こきりこ節"
  subtitle = "Kokiriko Bushi"
  composer = "富山県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Revision REVISION"
}

song = {
  \time 2/4

  \repeat volta 2 {
    c'4 c'8 bf
    c'8 c' \sukui f'4^\third
    ef'4^\first f'^\first
    g'4^\third g'8 f'^\first

    g'4^\third f'8^\first ef'^\first
    c'8 c' \sukui ef' f'
    c'4 c'8 bf
    <g c'>2

    g4 bf8 c'
    \tuplet 3/2 { ef'8 ef' \sukui ef' \hajiki } c'8 bf
    g g bf bf
    f4 g8 bf

    c'4 ef'
    \tuplet 3/2 { ef'8 ef' \sukui ef' \hajiki } c'8 bf
    c'8 c' \sukui c bf
    <g c'>2

    ef'4 f'8 f'
    \tuplet 3/2 { ef'8 ef' \sukui ef' \hajiki } c'8 bf
    c'8 c' \sukui c bf
    <g c'>2

    ef'4 f'8 f'
    \tuplet 3/2 { ef'8 ef' \sukui ef' \hajiki } c'8 bf
    c'8 ef' \sukui c bf
    <g c'>2
  }

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
