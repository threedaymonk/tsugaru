\version "2.18.2"
\language "english"

\paper{
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
  top-margin = 0.5\in
}

\header {
  tagline = ""
}

\score {
  \new TabStaff {
    \set TabStaff.stringTunings = \stringTuning <c g c'>
    \override TabStaff.Clef.stencil = ##f
    \repeat unfold 14 { s1 \bar "" \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
