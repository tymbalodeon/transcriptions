\version "2.19.83"
% \version "2.18.2"
\language "english"
\pointAndClickOff
\paper {
  % #(set-paper-size "c4")
  #(set-paper-size "letter")
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
  arranger = "transcribed by Ben Rosen"
}

timeSig = \time 4/4
keySig = \key ef \major

aFirst = {
  % 1
  bf8 r r4 r2 |
  % 2
  g8 af bf cf df cf bf af |
  % 3
  g4 af8 g bf4 r |
  % 4
  r1 |
  % 5
  bf8 r r4 r2 |
  % 6
  bf8 r r4 r2 |
  % 7
  bf8 r r4 r2 |
  % 8
  bf8 r r4 r2 |
  % 9
  bf8 r r4 r2 |
  % 10
  bf8 r r4 r2 |
  % 11
  bf8 r r4 r2 |
  % 12
  bf8 r r4 r2 |
  % 13
  bf8 r r4 r2 |
  % 14
  bf8 r r4 r2 |
  % 15
  bf8 r r4 r2 |
  % 16
  bf8 r r4 r2 |

};

aSecond = {};

b = {};

aThird= {};

aFourth = {};

\score {
  \new Staff = \relative c' {
    \clef treble
    \keySig
    \timeSig

    \mark \default
    \aFirst
    \mark \default
    \aSecond
    \mark \default
    \b
    \mark \default
    \aThird
    \mark \default
    \aFourth
  }
}
