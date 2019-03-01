\version "2.18.2"
\include "shamisen.ly"
\language "english"

#(set-global-staff-size 20)

\paper{
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:roman "IPAexGothic"
     #:factor (/ staff-height pt 20) ; unnecessary if the staff size is default
    ))
}

\header {
  title = "あどはだり"
  subtitle = "Adohadari"
  composer = "青森県"
  meter = "2/4 二上り"
  tagline = "https://shamisen.rocks – Revision REVISION"
}

\score {
  \header { piece = "Ⅰ" }
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    

    c4 ef
    f^\third bf
    \trtr { <c'\2>16^\third bf \hajiki g \sukui g \hajiki } f4^\third
    \trtr { f16^\third ef \hajiki c \sukui c \hajiki } c8. f16
    <g\3>4^\third <g\3>
    <g\3>8(^\third <bf\3>) <bf\3>4
    <bf\3>8( <c'\3>) <c'\3>4
    <c'\3>8( <d'\3>) <d'\3>4
    <d'\3>8( <c'\3>) <c'\3>4
    <c'\3>8( <d'\3>) <d'\3>4
    <d'\3>8( <c'\3>) <c'\3>4
    <c'\3>8( <bf\3>) <bf\3>4
    <bf\3>8( <g\3>) <g\3>4

    \time 1/4
    <g\3>8^\third f^\third

    \time 2/4
    \tuplet 3/2 { \trtr { f16 ef \hajiki c \hajiki } } ef8 ef ef
    f^\third bf g f^\third
    g bf <c'\2>^\third ef'

    \time 1/4
    c' bf^\first

    \time 2/4
    <c'\2>^\third <c'\2> \sukui <c'\2> <c'\2>

    \trtr { <c'\2>16 bf \hajiki g \sukui g \hajiki } bf8 bf
    <c'\2> ef' \oshi f' g'
    g' bf' \sukui c'' d''
    f''8. bf''32 bf'' \sukui bf''8 bf''
    bf'' bf'' \sukui g'' g''
    f''8. bf''32 bf'' \sukui bf''8 bf''

    bf'' bf'' \sukui g'' g''
    f'' f'' \sukui g''^\third g''
    \trtr { f''16 f'' \hajiki f'' \sukui f'' \hajiki } \trtr { d''16 d'' \hajiki d'' \sukui d'' \hajiki }
    c''8 c'' \sukui d''^\third d''
    \trtr { c''16 c'' \hajiki c'' \sukui c'' \hajiki } \trtr { bf'16 bf' \hajiki bf' \sukui bf' \hajiki }

    g'8 g' \sukui bf'^\third bf'
    g' bf'^\third \sukui g' f'
    g'^\third f'^\first \sukui g'^\third f'^\third
    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } ef'8 f'
    g'8 c''16 c''\sukui bf'8 d''16 d'' \sukui
    c''8 bf' g' f'

    g'^\third f'^\first \sukui g'^\third f'^\third
    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } ef'8 f'
    g'8 c''16 c''\sukui bf'8 d''16 d'' \sukui
    c''8 bf' g' f'
    g'^\third f'^\first \sukui g'^\third f'^\third
    \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } g'8 f'

    \repeat unfold 2 {
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } ef'8 f'
    }
    \repeat unfold 4 {
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki }
    }
    \repeat percent 2 {
      \repeat unfold 2 {
        \trtr { c'16 ef' \hajiki c' \sukui ef' \hajiki }
      }
    }
    \trtr { c'16 ef' \hajiki c' \sukui ef' \hajiki } c'8. bf16

    <c'\2>8^\third <c'\2> \sukui <c'\2> <c'\2>16 bf \hajiki
    <c'\2>4 <c c'\2 c'>8 <c c'\2 c'>
    <c c'\2 c'>4 r
    \bar "|."
    }
}

\score {
  \header { piece = "Ⅳ" }
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    

    <c c'\2 c'>4 ef4
    f4^\third bf
    \trtr { <c'\2>16 bf \hajiki g \sukui g \hajiki } f4
    \trtr { f16 ef \hajiki c \sukui c \hajiki } c8. <c'\3>16^\third
    <c'\3>4 <c'\3>8 <bf\3>
    <c'\3>( <f'\3>) <f'\3> <d'\3>

    <d'\3>( <g'\3>) <g'\3> <f'\3>
    \repeat unfold 2 {
      <f'\3>( <bf'\3>) <bf'\3> <g'\3>
      <bf'\3> <g'\3> <g'\3> <f'\3>
    }
    <f'\3> <d'\3> <d'\3> <c'\3>

    <c'\3> <bf\3> <bf\3> <g\3>
    \time 1/4
    <g\3> f
    \time 2/4
    \tuplet 3/2 { \trtr { f16 ef \hajiki c \hajiki } } ef8 ef ef
    f^\third bf g f^\third
    g bf <c'\2>^\third ef'
    \time 1/4
    c' bf^\first
    \time 2/4
    <c'\2>^\third <c'\2> \sukui <c'\2> <c'\2>

    \trtr { <c'\2>16 bf \hajiki g \sukui g \hajiki } bf8 bf
    <c'\2> ef' \oshi f' g'
    g' bf' \sukui c'' d''
    f''8. bf''32 bf'' \sukui bf''8 bf''
    bf'' bf'' \sukui g'' g''
    f''8. bf''32 bf'' \sukui bf''8 bf''

    bf'' bf'' \sukui g'' g''
    f'' f'' \sukui g''^\third g''
    \trtr { f''16 f'' \hajiki f'' \sukui f'' \hajiki } \trtr { d''16 d'' \hajiki d'' \sukui d'' \hajiki }
    c''8 c'' \sukui d''^\third d''
    \trtr { c''16 c'' \hajiki c'' \sukui c'' \hajiki } \trtr { bf'16 bf' \hajiki bf' \sukui bf' \hajiki }

    g'8 g' \sukui bf'^\third bf'
    g' bf'^\third \sukui g' f'
    g'^\third f'^\first \sukui g'^\third f'^\third

    \repeat unfold 2 {
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } ef'8 f'
      g'8. c''32 c'' c''8 c''
      c'' bf' c''^\third bf'

      \time 1/4
      c''^\third f'^\third
      \time 2/4
      f' f' \sukui f' f'
    }
    \repeat unfold 2 {
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } ef'8 f'
      g'^\third g' \sukui g' f'
    }
    \repeat unfold 2 {
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki } ef'8 f'
    }
    \repeat unfold 4 {
      \trtr { f'16 ef' \hajiki c' \sukui c' \hajiki }
    }

    \repeat percent 2 {
      \repeat unfold 2 {
        \trtr { c'16 ef' \hajiki c' \sukui ef' \hajiki }
      }
    }
    \trtr { c'16 ef' \hajiki c' \sukui ef' \hajiki } c'8. bf16

    <c'\2>8^\third <c'\2> \sukui <c'\2> <c'\2>16 bf \hajiki
    <c'\2>4 <c c'\2 c'>8 <c c'\2 c'>
    <c c'\2 c'>4 r

    \bar "|."
    }
}
