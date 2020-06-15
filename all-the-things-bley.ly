\version "2.20.0"
\language "english"
\pointAndClickOff
\paper {
  #(set-paper-size "c4")
  % #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}

\header {
  tagline = ##f
  title = "All The Things You Are"
  subtitle = "Piano Solo by Paul Bley"
  subsubtitle = "from the Album \"Sonny Meets Hawk \""
  composer = "Jerome Kern"
}

aFirst = \relative c' {
  R1 |
  r4 e r2 |
  e4 r e r |
  e8 e \tuplet 3/2 { ef df af } e' e16 ef df4 |
  
  \break

  af4 r8 af' bf df~ \tuplet 3/2 { df bf af } |
  \tuplet 3/2 { df bf af } e ef~ ef df r4 |
  a4 \tuplet 3/2 { r8 c d } \tuplet 3/2 { e fs gs } \tuplet 3/2 { a cs ds } |
  \tuplet 3/2 { e cs ds } \tuplet 3/2 { b as gs } \tuplet 3/2 { e ds cs } r4 |

  \break

  r \tuplet 3/2 { r8 c g' } c g ef c |
  bf'4 af8 bf16 af g8 f ef c |
  df ef f af c af bf cf |
  g e d c b gs a4 |
  
  \break

  r \tuplet 3/2 { r8 c e } g4 fs8 a |
  e'4 \tuplet 3/2 { ds8 b a } cs4 b8 a |
  gs4 fs8 es ds4 cs8 ds |
  es cs ds4 cs as |

  \bar "||"
}

bridge = \relative c' {
  
  r g'8 d'~ d4 g,8 d'~ |
  d ef, \tuplet 3/2 { f bf d } bf4 d |
  r ef,8 c'~ c df, ef c'~ |
  c df, \tuplet 3/2 { ef af c } df4 c8 bf~ |

  \break

  bf4 g8 e ef4 r |
  r8 e \tuplet 3/2 { g bf c } \tuplet 3/2 { ef e g } \tuplet 3/2 { ef e b } |
  \tuplet 3/2 { bf a g } \tuplet 3/2 { d' bf b } \tuplet 3/2 { g e d } \tuplet 3/2 { g ef e } |
  \tuplet 3/2 { cf bf af } \tuplet 3/2 { g f' bf, } \tuplet 3/2 { b g b } \tuplet 3/2 { d ef af, } |

  \bar "||"
}

aSecond = \relative c'' {

}

aThird = \relative c'' {
  
}

changes = \chords {
  f1:m7 |
  bf:m7 |
  ef:7 |
  af:maj7 |

  df:maj7 |
  g:7 |
  c:maj7 |
  s |

  c:m7 |
  f:m7 |
  bf:7 |
  ef:maj7 |

  af:maj7 |
  a2:m7 d:7 |
  g1:maj7 |
  s |

  a:m7 |
  d:7 |
  g:maj7 |
  s |

  fs:m7.5- |
  b:7 |
  e:maj7 |
  c:7.5+ |

  f1:m7 |
  bf:m7 |
  ef:7 |
  af:maj7 |

  df:maj7 |
  df:m7 |
  c:m7 |
  b:dim7 |

  bf:m7 |
  ef:7 |
  af:maj7 |
  c:7.5+ |
}

\score {
  <<
    \changes
    \new Staff {
      \clef treble
      \key af \major
      \time 4/4

      \aFirst
      \bridge
    }
  >>
}
