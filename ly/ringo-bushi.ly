\include "pre.ly"
\language "english"

\header {
  title = "りんご節"
  subtitle = "Ringo Bushi"
  composer = "青森県"
  meter = "2/4 二上り"
}

song = {
  \time 2/4

  \repeat volta 2 {
    c4 c'8 af
    c' c' \sukui df' c'
    f'^\first f' \sukui g'^\third f'
    f'( g') g' af'^\second
    c''4^\second c''8 c''
    af'^\second af' \sukui g' g'

    f' g'16 \sukui f' \hajiki df'8\2 c' \oshi
    af g \hajiki c' f'
    <g' g>8^\first <g' g> r <af' g>^\second
    <g' g>4^\first <f' g>^\first
    <g' g>8 <g' g> r af'^\second
    g'^\first f'^\first df'\2 f'

    <g' g>4^\first g8 f'^\first \oshi
    g'8^\first g' \hajiki g' g'
    g g' \oshi g' g'
    af'^\second g' \sukui f' df'\2
    f' f' \sukui g f' \oshi
    g'^\first g' \sukui af'^\second af'

    g' g' \sukui f' df'\2^\second
    f' f' \sukui g' af'^\second
    g' g' \sukui g g' \oshi
    g' g' \sukui g' g'
    g g' \oshi af'^\second g'
    f'^\first g'16^\third \sukui f' \hajiki df'8\2^\second f' \oshi

    c' c' \sukui c af
    c' c' \sukui c' c'
    c' c' \sukui df' c'
    f' f' \sukui f' g'^\first
    af'^\second \sukui af' g g' \oshi
    f' g'16 \sukui f' \hajiki df'8\2^\second f' \oshi

    c' c' \sukui g c' \oshi
    f' f' \sukui g'^\first g'
    af'^\second af' \sukui g af' \oshi
    g'^\first g' \sukui f' g'^\third
    f' f' \sukui g f' \oshi
    f' f' \sukui f' f'
  }

  c4 c'8 af
  c' c' \sukui df' c'
  f' f' \sukui g' f'
  f'( g') g' af'^\second
  c''4 c''8 c''
  af' af' \sukui g' g'

  f' g'16 \sukui f' \hajiki df'8\2^\second c' \oshi
  af g \hajiki c' f'
  <g' g>8 <g' g> r <af' g>^\second
  <g' g>4 <f' g>
  <g' g>8 <g' g> r af'^\second
  g' f' df'\2 f'
  <g' g>-2
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
