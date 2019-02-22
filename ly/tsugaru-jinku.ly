\include "pre.ly"
\language "english"

\header {
  title = "津軽甚句"
  subtitle = "Tsugaru Jinku"
  composer = "青森県"
  meter = "2/4 二上り（はずんで）"
}

song = {
  \time 2/4

  r8 g g bf

  c'8 ef' f'^\first g'^\third
  g'8 g' \sukui f'^\first ef'
  c'8 c' \sukui ef' f'^\third
  ef'8 ef'16 \sukui ef' \hajiki c'8 bf
  c'8 c' \sukui f'^\third ef'16 ef' \hajiki

  \repeat unfold 2 { c'8 c' \sukui c bf }

  c'8 g g bf

  \repeat volta 2 {
    c'8 ef' f'^\first g'^\third
    g'8 g' \sukui f'^\first ef'
    c'8 c' \sukui ef' f'^\third
    ef'8 ef'16 \sukui ef' \hajiki c'8 bf
    c'8 c' \sukui f'^\third ef'16 ef' \hajiki

    \repeat unfold 2 { c'8 c' \sukui c bf }

    c'8 c' \sukui g' g'
    g'8 g' \sukui g' g'
    g'8 g' \sukui g' bf'^\third
    g'8^\first bf'^\third \sukui g' g'
    f'8^\first f' \sukui g'^\first bf'^\third
    g'8 g' \sukui f'^\first ef'
    c'8 c' \sukui ef' f'
    ef'8 ef'16 \sukui ef' \hajiki c'8 bf
    c'8 c' \sukui f'^\third ef'16 ef' \hajiki

    \repeat unfold 2 { c'8 c' \sukui c bf }

    c'8 g g bf

    c'8 ef' f'^\first g'^\third
    g'8 g' \sukui f'^\first ef'
    c'8 c' \sukui ef' f'^\third
    ef'8 ef'16 \sukui ef' \hajiki c'8 bf
    c'8 c' \sukui f'^\third ef'16 ef' \hajiki

    \repeat unfold 2 { c'8 c' \sukui c bf }

    c'8 g g bf
  }

  c'8 ef' f'^\first g'^\third
  g'8 g' \sukui f'^\first ef'
  c'8 c' \sukui ef' f'^\third
  ef'8 ef'16 \sukui ef' \hajiki c'8 bf
  c'8 c' \sukui f'^\third ef'16 ef' \hajiki 

  c'8 c' \sukui c bf
  <c g c'>4
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
