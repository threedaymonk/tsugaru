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

    %{ shamisen
    tuning niagari

    <0\1>4 <3>
    <4> iii <3\2>
    \trtr { <4>16 iii <3> ha <0> su <0> ha } <4\1>4 iii
    \trtr { <4>16 iii <3> ha <0> su <0> ha } <0>8. <4>16
    <6>4 iii <6>
    <6>8( iii <9>) <9>4
    <9>8( <10>) <10>4
    <10>8( <12>) <12>4
    <12>8( <10>) <10>4
    <10>8( <12>) <12>4
    <12>8( <10>) <10>4
    <10>8( <9>) <9>4
    <9>8( <6>) <6>4

    \time 1/4
    <6>8 iii <4> iii

    \time 2/4
    \tuplet 3/2 { \trtr { <4>16 <3> ha <0> ha } } <3>8 <3> <3>
    <4> iii <3\2> <0> <4\1> iii
    <0\2> <3> <4> iii <3\3>

    \time 1/4
    <0> <3\2> i

    \time 2/4
    <4> iii <4> su <4> <4>

    \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <3>
    <4> <3\3> o <4> <6>
    <6> <9> su <10> <12>
    <14>8. <19>32 <19> su <19>8 <19>
    <19> <19> su <16> <16>
    <14>8. <19>32 <19> su <19>8 <19>

    <19> <19> su <16> <16>
    <14> <14> su <16> iii <16>
    \trtr { <14>16 <14> ha <14> su <14> ha } \trtr { <12>16 <12> ha <12> su <12> ha }
    <10>8 <10> su <12> iii <12>
    \trtr { <10>16 <10> ha <10> su <10> ha } \trtr { <9>16 <9> ha <9> su <9> ha }

    <6>8 <6> su <9> iii <9>
    <6> <9> iii su <6> <4>
    <6> iii <4> i su <6> iii <4> iii
    \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <4>
    <6>8 <10>16 <10>su <9>8 <12>16 <12> su
    <10>8 <9> <6> <4>

    <6> iii <4> i su <6> iii <4> iii
    \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <4>
    <6>8 <10>16 <10>su <9>8 <12>16 <12> su
    <10>8 <9> <6> <4>
    <6> iii <4> i su <6> iii <4> iii
    \trtr { <4>16 <3> ha <0> su <0> ha } <6>8 <4>

    \repeat unfold 2 {
      \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <4>
    }
    \repeat unfold 4 {
      \trtr { <4>16 <3> ha <0> su <0> ha }
    }
    \repeat percent 2 {
      \repeat unfold 2 {
        \trtr { <0>16 <3> ha <0> su <3> ha }
      }
    }
    \trtr { <0>16 <3> ha <0> su <3> ha } <0>8. <3\2>16

    <4>8 iii <4> su <4> <4>16 <3> ha
    <4>4 <0\1 4\2 0\3>8 <0\1 4\2 0\3>
    <0\1 4\2 0\3>4 r
    \bar "|."
    %}
  }
}

\score {
  \header { piece = "Ⅳ" }
  \new TabStaff {
    \set TabStaff.stringTunings = #niagariTuning
    \shamisenNotation
    \time 2/4

    %{ shamisen
    tuning niagari

    <0\1 4\2 0\3>4 <3\1>4
    <4>4 iii <3\2>
    \trtr { <4>16 <3> ha <0> su <0> ha } <4\1>4
    \trtr { <4>16 <3> ha <0> su <0> ha } <0>8. <10>16 iii
    <10>4 <10>8 <9>
    <10>( <14>) <14> <12>

    <12>( <16>) <16> <14>
    \repeat unfold 2 {
      <14>( <19>) <19> <16>
      <19> <16> <16> <14>
    }
    <14> <12> <12> <10>

    <10> <9> <9> <6>
    \time 1/4
    <6> <4>
    \time 2/4
    \tuplet 3/2 { \trtr { <4>16 <3> ha <0> ha } } <3>8 <3> <3>
    <4> iii <3\2> <0> <4\1> iii
    <0\2> <3> <4> iii <3\3>
    \time 1/4
    <0> <3\2> i
    \time 2/4
    <4> iii <4> su <4> <4>

    \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <3>
    <4> <3\3> o <4> <6>
    <6> <9> su <10> <12>
    <14>8. <19>32 <19> su <19>8 <19>
    <19> <19> su <16> <16>
    <14>8. <19>32 <19> su <19>8 <19>

    <19> <19> su <16> <16>
    <14> <14> su <16> iii <16>
    \trtr { <14>16 <14> ha <14> su <14> ha } \trtr { <12>16 <12> ha <12> su <12> ha }
    <10>8 <10> su <12> iii <12>
    \trtr { <10>16 <10> ha <10> su <10> ha } \trtr { <9>16 <9> ha <9> su <9> ha }

    <6>8 <6> su <9> iii <9>
    <6> <9> iii su <6> <4>
    <6> iii <4> i su <6> iii <4> iii

    \repeat unfold 2 {
      \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <4>
      <6>8. <10>32 <10> <10>8 <10>
      <10> <9> <10> iii <9>

      \time 1/4
      <10> iii <4> iii
      \time 2/4
      <4> <4> su <4> <4>
    }
    \repeat unfold 2 {
      \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <4>
      <6> iii <6> su <6> <4>
    }
    \repeat unfold 2 {
      \trtr { <4>16 <3> ha <0> su <0> ha } <3>8 <4>
    }
    \repeat unfold 4 {
      \trtr { <4>16 <3> ha <0> su <0> ha }
    }

    \repeat percent 2 {
      \repeat unfold 2 {
        \trtr { <0>16 <3> ha <0> su <3> ha }
      }
    }
    \trtr { <0>16 <3> ha <0> su <3> ha } <0>8. <3\2>16

    <4>8 iii <4> su <4> <4>16 <3> ha
    <4>4 <0\1 4\2 0\3>8 <0\1 4\2 0\3>
    <0\1 4\2 0\3>4 r

    \bar "|."
    %}
  }
}
