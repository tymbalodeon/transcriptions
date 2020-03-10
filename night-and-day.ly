\version "2.20.0"
% \version "2.19.83"
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
  title = "Night And Day"
  subtitle = "Piano Solo by Bill Evans"
  subsubtitle = "from the Album \"Everybody Digs Bill Evans\""
  composer = "Cole Porter"
  arranger = "tr. by Ben Rosen"
}

aFirst = \relative c'' {
  bf4  r4 r2 |
  g8 af bf cf df cf bf af |
  g4 af8 g bf4 r |
  r1 |

  r8 cf, ef g bf af df cf |
  e d \tuplet 3/2 { df16 d df } cf8 bf af f fs |
  g bf f ef d4 c |
  r2 r4 \tuplet 3/2 { r8 g'4 } |

  f8 ef~ \tuplet 3/2 { ef g c } d ef f gf |
  ef cf bf af g f gf e |
  f ef bf g d' ef d c |
  b c \tuplet 3/2 { d ef f } gf af a b |

  c af f ef r2 |
  r4 r8 af, d4 f8 cf' |
  bf af g bf f ef d bf
  c g r4 r r8 af |
  \bar "||"
}

aSecond = \relative c' {
  \tuplet 3/2 { cf8 ef4 } g8 bf df e g bf |
  df <e e,>~ <e e,> d df cf bf af |
  g bf f ef \tuplet 3/2 { d16 ef d } c8 bf g |
  f ef d ef d c r4 |

  r8 f, \tuplet 3/2 { c' ef g } \tuplet 3/2 { bf df e } \tuplet 3/2 { g bf df } |
  \tuplet 3/2 { <e, e'>4 <g g'> gf' } f8 ef~ \tuplet 3/2 { ef ff d } |
  ef cs d c \tuplet 3/2 { bf16 c bf } g8 \tuplet 3/2 { f16 g f } ef8
  d c bf g f ef d ef

  g c ef4 \acciaccatura e8 f4 \acciaccatura e8 f4 |
  \acciaccatura e8 f ef \tuplet 3/2 { f ef cf } bf af g gf |
  f ef d bf c4 g |
  r \tuplet 3/2 { r8 d''4 } f8 ef \tuplet 3/2 { d16 ef d } c8 |

  bf4 r r2 |
  r4 r8 bf \repeat unfold 2 { \tuplet 3/2 { df16 d df } bf8 }
  \tuplet 3/2 { df16 d df } bf8 g ef d c r4 |
  r1 |
  \bar "||"
}

bridge = \relative c'' {
  r8 bf df f af gf bf g |
  f ef r4 r r8 d |
  \tuplet 3/2 { f c ef } \tuplet 3/2 { bf c g } \tuplet 3/2 { bf f g } \tuplet 3/2 { d f c } |
  \tuplet 3/2 { ef bf c } \tuplet 3/2 { g bf f } \tuplet 3/2 { g d f } c r |

  r2 af''''16 ef gf df ef bf df af |
  bf g r8 r af16 ef gf df d bf df af r8 |
  e''16 b d bf c g bf f g d f c ef bf c g |
  bf f g d f c ef bf c g bf f g d f c |

  r4 \tuplet 3/2 { r8 g'' c } \tuplet 3/2 { ef g c } ef f~ |
  f2 r8 ef \tuplet 3/2 { df16 ef df } cf8 |
  bf af g bf f ef d ef |
  \new Voice {
    <<
      { f gf f ef d ef d c }
      { d ef d c b c bf af }
    >> }

  bf2 r8 \tuplet 3/2 { af16 bf af } g8 f |
  e f af c ef4 d8 f |
  bf,16 c bf af g8 bf f ef d bf |
  c4 r r2 |
  \bar "||"
}

aThird = \relative c'' {
  r8 bf~ bf4 bf4. bf8 |
  r2 r4 r8 bf |
  d bf bf g g d d bf |
  c4 r r2 |

  \tuplet 3/2 { r4 g' c } \tuplet 3/2 { d ef d8 c } |
  b b r4 r2 |
  r8 a16 bf \tuplet 3/2 { g8. bf16 g f } ef8 d f ef |
  d c r4 r8 d16 c b c \tuplet 3/2 { d ef f } |

  c4 r r bf16 g a g |
  \tuplet 5/4 { af bf c ef g } f c ef cs \tuplet 5/4 { d f af cf af32 a } bf16 f af gs |
  \tuplet 5/4 { g bf d f d } ef bf r8 r2 |
  \acciaccatura { bf16 a af } g4 \acciaccatura { bf16 a af } f4 \acciaccatura { bf16 a af } ef8 g bf df~ |

  df \acciaccatura { ef,16 af } df8 d4 \acciaccatura { e,16 a } ef'4 \acciaccatura { f,16 bf } e4 |
  \acciaccatura { fs,16 b } ef?4 \acciaccatura { f,16 bf } d4 \acciaccatura { e,16 a } df4 r |
  r8 bf16 g f8 ef d ef d c |
  bf g r4 r2 |
  \bar "||"
}

aFourth = {
  \bar "|."
}

\score {
  \new Staff {
    \clef treble
    \key ef \major
    \time 4/4

    \mark "A1"
    \aFirst
    \mark "A2"
    \aSecond
    \mark "B"
    \bridge
    \mark "A3"
    \aThird
    \mark "A4"
    \aFourth
  }
}
