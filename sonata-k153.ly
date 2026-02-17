%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.153"
  source = "https://ks15.imslp.org/files/imglnks/usimg/d/de/IMSLP626959-PMLP476444-Sonata_K._153_(as_L._445).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . -0.5) (0 . 0) (0 . 1) (0 . 1.25))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0.25) (0.5 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . -1))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . -0.25) (0 . 0) (0 . 0.5) (0 . -1)) \etc
slurShapeH = \shape #'(
                        ((0 . -2) (-1 . 2.5) (0 . -1.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 8) (0 . -11))
                      ) \etc

%
% Music
%

global = {
  \time 12/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g''4.\prall a\prall  b8( g d  c' a d,) |
    b'4.\prall a\prall  b8( g d  c' a d, |
    b'8 g fs)  fs( e d)  d-\slurShapeB ( c b  c a' c, |
    b8 g' fs)  fs( e d)  d( c b  c a' c, |
    b4.) d\prall d\prall d\prall |
    d8( b' a)  a( g fs)  r a( g)  g( fs e) |
    r8 fs( g  a) a-. a-.  a( fs) a-.  a-. a-. a-. |
    a8( fs) a-.  a-. a-. a-.  a4.-> d\prall |
    
    \barNumberCheck 9
    d4.\prall d\prall d\prall e,-\slurShapeD ( |
    fs8 a d,  e d cs  d fs a) d4.\prall |
    d4.\prall d\prall d\prall e,-\slurShapeF ( |
    fs8 a d,  e d cs  d fs a~  a e cs |
    d8 fs a~  a e cs  d a' d,  e d cs |
    \time 6/8
    d4.) r4 r8 | 
  }
  \repeat volta 2 {
    \time 12/8
    d4.-\slurShapeG ( c!-\insideSlur \prall b) c(\prall |
    b4.) c(\prall b) d |
    
    \barNumberCheck 17
    <d gs>4.( <d a'> <d gs> <d a'>) |
    gs8( a b)  b( c d) \acciaccatura { d } c( b a  e b' d) |
    \acciaccatura { d } c( b a  e b' d  c b a)  r a( g!) |
    g8( fs g  a b c) \acciaccatura { c } b( a g  d a' c) |
    \acciaccatura { c } b( a g  d a' c  b a g)  r g( fs |
    e8 fs g  c a g  fs g a)  r g( fs |
    e8 fs g  c a g  fs e d) g4.\prall |
    g4.\prall g\prall g\prall \grace { a16( b) } c4.( |
    
    \barNumberCheck 25
    b8 d g,  a g fs  g d g) g4.\prall |
    g4.\prall g\prall g\prall \grace { a16( b) } c4.-\slurShapeJ ( |
    b8 d g,  a g fs  g b d~  d a fs |
    g8 b d~  d a fs  g d b  g d b |
    \time 6/8
    << 
      { s4. \staffDown \hideNoteHead g,4.) | } 
      \new Voice { R2. | } 
    >>
    \timeBeforeBarLine
    \time 12/8
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    g8( b g  d' fs, d  g4. fs4.) |
    g8( b g  d' fs, d  g4. fs4. |
    g4.) b,-\slurShapeA ( c d |
    g4. b, c d) |
    g8( b g  d' fs, d  g b g  d' fs, d |
    <g d'>4.) <fs d'>-\slurShapeC ( <e d'> <a cs> |
    d,4.) <cs a'>( <d a'> <cs a'> |
    <d a'>4. <cs a'>)  r8 d( e  fs d fs |
    
    \barNumberCheck 9
    g8 e g  a fs a  b g b  cs a cs |
    d4 fs,8  g4 a8  d,4.) fs8-\slurShapeE ( d fs |
    g8 e g  a fs a  b g b  cs a cs |
    d4 fs,8  g4 a8  d,4 fs8  g4 a8 |
    d,4 fs8  g4 a8  d,4) fs,8(  g4 a8 |
    \time 6/8 |
    d,4.) r4 r8 |
  }
  \repeat volta 2 {
    \time 12/8
    r8 d'-\slurShapeH ( e  fs d' fs,  g d' g,  fs d' fs, |
    g8 d' g,  fs d' fs,  g d' g,  f d' f, |
    
    \barNumberCheck 17
    e8 d' e,  f d' f,  e d' e,  f d' f, |
    <e d'>4.) q( <a e'> <gs e'> |
    <a e'>4. <gs e'> <a e'> <c e>) |
    <d, d'>4. <fs d'>( <g! d'> <fs d'> |
    <g d'>4. <fs d'> <g d'>) <b d>( |
    <c e>4.) a( <d, d'>) <b' d>( |
    <c e>4.) a( <d, d'>)  b8( g b |
    c8 a c  d b d  e c e  fs d fs |
    
    \barNumberCheck 25
    g4 b,8  c4 d8  g,4.) b8-\slurShapeI ( g b |
    c8 a c  d b d  e c e  fs d fs |
    g4 b,8  c4 d8  g4 b,8  c4 d8 |
    g4 b,8  c4 d8  g,4.) r4 r8 |
    \time 6/8
    g'8 d b g4. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1.-\tweak Y-offset #0.5 \f |
    s1. |
    s4. s-\tweak Y-offset #0.5 \p s2.-\tweak extra-offset #'(0 . 1) \cresc |
    s1. |
    s1.\f |
    s4. s\mf s2. |
    s1.\cresc 
    s2. s\f |
    
    \barNumberCheck 9
    s1.*5 |
    \time 6/8
    s2. |
  }
  \repeat volta 2 {
    \time 12/8
    s1.\p |
    s1. |
    
    \barNumberCheck 17
    s1.-\tweak Y-offset #1 \mf |
    s2.\cresc s\f |
    s2. s4. s8 s4\mf |
    s1.*3 |
    s2. s4. s-\tweak Y-offset #0.5 \cresc |
    s2. s4. s-\tweak Y-offset #0.5 \f |
    
    \barNumberCheck 25
    s2. s4. s8 s4-\tweak Y-offset #0.5 \mf |
    s2.-\tweak Y-offset #1 \cresc s4. s-\tweak extra-offset #'(0 . 1) \f |
    s1.*2 |
    \time 6/8
    s2. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Vivo" 4. = 138
    s1.*8 |
    
    \barNumberCheck 9
    s1.*4 |
    s1. |
    \time 6/8
    s2.
  }
  \repeat volta 2 {
    \set Score.tempoHideNote = ##t
    \tempo 4. = 138
    \time 12/8
    s1.*2 |
    
    \barNumberCheck 17
    s1.*8 |
    
    \barNumberCheck 25
    s1.*3 |
    \tag layout {
      s1. |
      \time 6/8
      s2. |
    }
    \tag midi {
      \alternative {
        {
          s1. |
          \time 6/8
          s2. |
        }
        {
          s2. s4. \tempo 4. = 120 s |
          \time 6/8
          \tempo 4. = 108 s4. \tempo 4. = 80 s |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1.*3 \break
  s1.*3 \break
  s1.*3 \break
  s1.*2 \break
  s1.*2 s2. \pageBreak
  
  % page 2
  s1.*3 \break
  s1.*3 \break
  \grace { s8 } s1.*3 \break
  s1.*3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
