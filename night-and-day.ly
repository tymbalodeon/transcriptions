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
  % system-system-spacing =
  %   #'((basic-distance . 16)
  %     (minimum-distance . 12)
  %     (padding . 1)
  %     (stretchability . 60))
}

\header {
  tagline = ##f
  title = "Night And Day"
  subtitle = "Piano Solo by Bill Evans"
  subsubtitle = "from the Album \"Everybody Digs Bill Evans\""
  composer = "Cole Porter"
  arranger = "tr. by Ben Rosen"
}

aFirst = {
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

aSecond = {
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

% b = {}

% aThird= {}

% aFourth = {}

\score {
  \new Staff \relative c'' {
    \clef treble
    \key ef \major
    \time 4/4

    \mark "A1"
    \aFirst
    \mark "A2"
    \aSecond
    % \mark \default
    % \b
    % \mark \default
    % \aThird
    % \mark \default
    % \aFourth
  }
}
