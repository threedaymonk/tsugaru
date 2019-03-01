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
  title = "北海盆唄"
  subtitle = "Hokkai Bon Uta"
  composer = "北海道"
  meter = "2/4 二上り"
  tagline = "https://shamisen.space – Revision REVISION"
}

song = {
  \time 2/4

  \repeat unfold 2 {
    <g c'>8 <a'>16^\third \sukui <g a'>16 <g a'>8 <g a'>8
    <g g'>16 g'16 \hajiki g'16 \sukui <g f'>16 <g g'>8 <g g'>8
  }

  <g c'>8 <a'>16^\third \sukui <g a'>16 <g a'>8 <g a'>8
  g'16 g'16 \hajiki r16 f'16[d'8\2^\third c'8\2]
  d'8\2^\third f'16 f'16 \sukui d'8\2^\third f'8
  <g g'>4^\first <g g'>4

  \repeat volta 2 {
    <g c'>8 <a'>16^\third \sukui <g a'> <g a'>8 <g a'>
    <g a'>8 <a'>16 \sukui <g a'> <g a'>8 <g a'>
    <g g'>8 <g'>16 \sukui <g g'> <g a'>8 <g g'>
    <g a'>8^\third <a'>16 \sukui <g a'> <g g'>8 <g f'>

    <g g'>16^\first g' \hajiki g' \sukui <g g'> <g g'>8 <g g'>
    <g g'>16^\first g' \hajiki g' \sukui <g g'> <g g'>8 <g g'>
    <g c'>8 c'16 \sukui <g c'> <g f'>8^\first <g g'>^\first
    <g a'>8^\third <a'>16 \sukui <g a'> <g g'>8 <g a'>

    <g g'>8 g'16 \sukui <g g'> <g c'>8 <g d'>
    <g d'>16 d' \hajiki d' \sukui <g d'> <g d'>8 <g d'>
    <g d'>16 d' \hajiki d' \sukui <g d'> <g d'>8 <g d'>
    <g c'>8 c'16 \sukui <g c'>16 <g c'>8 <g f'>8^\first

    <g g'>8^\first g'16 \sukui <g g'>16 <g g'>8 <g g'>8
    <g g'>8 g'16 \sukui <g g'>16 <g g'>8 <g g'>8
    <g g'>8 g'16 \sukui <g g'>16 <g g'>8 <g g'>8
    a8 r16 a16[a8 a8]

    <g c'>8 f'16 \sukui <g f'>16 <g f'>8 <g f'>8
    <g f'>8 f'16 \sukui d'16\2^\third <g f'>8 <g g'>8^\third
    <g f'>8 f'16 \sukui <g f'>16 <g c'>8 <g d'>8

    <g d'>16 d'16 \hajiki d'16 \sukui <g d'>16 <g d'>8 <g d'>8
    <g d'>16 d'16 \hajiki d'16 \sukui <g d'>16 <g d'>8 <g d'>8

    \repeat unfold 2 {
      <g c'>8 <a'>16^\third \sukui <g a'>16 <g a'>8 <g a'>8
      <g g'>16 g'16 \hajiki g'16 \sukui <g f'>16 <g g'>8 <g g'>8
    }

    <g c'>8 <a'>16^\third \sukui <g a'>16 <g a'>8 <g a'>8
    g'16^\first g'16 \hajiki r16 f'16[d'8\2^\third c'8\2]
    d'8\2^\third f'16 f'16 \sukui d'8\2^\third f'8
    <g g'>4 <g g'>4
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
