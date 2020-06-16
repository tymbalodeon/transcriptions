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

  r r8 c16 g' c8 g ef c |
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

aSecond = \relative c' {
  d4 \tuplet 3/2 { r8 f fs } \tuplet 3/2 { g gs a } \tuplet 3/2 { bf g4 } |
  r4 r8 df <g af> af16 g f8 c'~ |
  c4 ef, ef c'8 d,~ |
  d2. c'8 df,~ |

  df4 c'8 df, d4 c'8 ef,~ |
  ef c' ef, e g af c fs,~ |
  fs4 c'8 fs, g4 c8 g~ |
  g af c af a4 d8 bf |
  
  b4 d8 b cs4 e8 cs~ |
  cs d f d ef e g e~ |
  e gf df ef e df ef df |
  c bf af g e c r4 |

  \bar "||"
}

aThird = \relative c' {
  c8 c'4 bf8 af4 r8 fs~ |
  fs4 fs8 e fs4 e |
  cs8 d cs d~ d4 cs |
  a' a8 gs a4 g8 fs~ |
  
  fs fs4 e8 fs4 e |
  cs' d d cs8 b~ |
  b cs16 b a8 gs~ gs gs16 fs e8 d |
  cs fs r4 cs r8 cs |

  g' ef'4. d8 c g c, |
  r f bf b d g e cs |
  r a af gf f ef r bf' |
  d4 \tuplet 3/2 { bf8 g d } c' bf g f |

  ef f16 ef df4 ef c |
  r \tuplet 3/2 { r8 df ef } f16 gf a c d8 ef |
  \tuplet 3/2 { b cs e } \tuplet 3/2 { b cs a } \tuplet 3/2 { gs fs e } b'16 fs gs e |
  \tuplet 3/2 { ef8 d c } \tuplet 3/2 { cs ds fs16 cs } \tuplet 3/2 { ds8 b bf16 gs } a8 g' |
  
  \tuplet 3/2 { e c a } \tuplet 3/2 { d ef \tuplet 3/2 { f16 gf af } } \tuplet 3/2 { a8 c ef } r4 |
  R1 |
  r2 r8 bf~ bf fs' |
  a,4
  
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
    \repeat unfold 2 { \changes }
    \new Staff {
      \clef treble
      \key af \major
      \time 4/4

      \aFirst
      \bridge
      \aSecond
      \aThird
    }
  >>
}
