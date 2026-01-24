%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.152"
  source = "https://ks15.imslp.org/files/imglnks/usimg/9/95/IMSLP626958-PMLP476253-Sonata_K._152_(as_L._179).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . -3) (1.5 . 0.5) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . -3) (1.5 . 0.5) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0 . 0) (0 . -2) (1 . 0.5) (0 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g''4. |
    r16 b( a g fs a |
    g8-.) d-. b'-. |
    r16 d( c b a c |
    b8-.) d,-. g-. |
    r16 b( a g fs a |
    g8-.) d-. b'-. |
    r16 d( c b a c |
    
    \barNumberCheck 9
    b16 a g fs e d |
    c16 e d c b a) |
    b8(\prall a16 b g8) |
    r8 g'16( e d cs) |
    cs4( d8) |
    r8 b'16( e, d cs) |
    cs4( d8) |
    r8 a'16( f e d) |
    
    \barNumberCheck 17
    d4( e8) |
    r8 b'16( d, cs d) |
    d4( cs8) |
    r8 a'16( f e d) |
    d4( e8) |
    r8 b'16( d, cs d) |
    d4( cs8) |
    r16 e-. e-. e-. e-. e( |
    
    \barNumberCheck 25
    a16-.) g32( fs! e16) d-. cs-. d-. |
    r16 e-. e-. e-. e-. e( |
    a16-.) g32( fs e16) d-. cs-. d-. |
    r16 b'-. b-. b-. b( cs |
    d16-.) cs32( b a16) g-. g( fs) |
    fs16( e) e( d) d( cs) |
    \appoggiatura { cs16 } d4 r8 |
    r16 e-. e-. e-. e-. e( |
    
    \barNumberCheck 33
    a16-.) g32( fs e16) d-. cs-. d-. |
    r16 e-. e-. e-. e-. e( |
    a16-.) g32( fs e16) d-. cs-. d-. |
    r16 b'-. b-. b-. b( cs |
    d16-.) cs32( b a16) g-. g( fs) |
    fs16( e) e( d) d-\slurShapeC ( cs |
    d16 fs) fs( a) a( g) |
    g16( fs) fs( e d cs |
    
    \barNumberCheck 41
    d16 fs) fs( a) a( g) |
    g16( fs) fs( e d cs |
    d16 a') a( d) d( d,) |
    d16-\slurShapeD ( e fs g a cs,) |
    \tag layout { d4.\prallprall } \tag midi { d\prall } |
  }
  \repeat volta 2 {
    r16 a'( d, e fs g |
    a16 b c! b) b( c) |
    r16 a( c, d e fs |
    
    \barNumberCheck 49
    g16 a b a) a( b) |
    r16 g( b, c d e |
    fs16 g a g) g( a) |
    r16 c-. c( b) b-\slurShapeE ( a |
    gs16 f) f( e) e( d) |
    d16( c) c( b) b( a) |
    \afterGrace 15/16 a4(\trill { b16 a } gs8-.) |
    r16 b-. b-. b-. b-. b( |
    
    \barNumberCheck 57
    e16-.) d32( c b16) a-. gs-. a-. |
    r16 b-. b-. b-. b-. b( |
    e16-.) d32( c b16) a-. gs-. a-. |
    r16 e'-. e-. e-. e( fs |
    g16-.) fs32( e d16) d'-. d( c) |
    c16( b) b( a) a( g) |
    \appoggiatura { g16 } fs8.(\prall e16 d8) |
    r16 a'-. a-. a-. a-. a( |
    
    \barNumberCheck 65
    d16-.) c32( b a16) g-. fs-. g-. |
    r16 a-. a-. a-. a-. a( |
    d16-.) c32( b a16) g-. fs-. g-. |
    r16 e-. e-. e-. e( fs |
    g16-.) fs32( e d16) c'-. c( b) |
    b16( a) a( g) g( fs) |
    \appoggiatura { fs16 } g4. |
    r16 a-. a-. a-. a-. a( |
    
    \barNumberCheck 73
    d16-.) c32( b a16) g-. fs-. g-. |
    r16 a-. a-. a-. a-. a( |
    d16-.) c32( b a16) g-. fs-. g-. |
    r16 e-. e-. e-. e( fs |
    g16-.) fs32( e d16) c'-. c( b) |
    b16( a) a( g) g-\slurShapeF ( fs |
    g16 b) b( d) d( c) |
    c16( b) b( a g fs |
    
    \barNumberCheck 81
    g16 b) b( d) d( c) |
    c16( b) b( a g fs |
    g16 fs e d c b |
    a16-.) b32( c b16 a g fs) |
    \tag layout { g4.\prallprall } \tag midi { g\prall } |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    g8-. b-. g-. |
    <c, c'>4( <d d'>8) |
    g8-. b-. g-. |
    <c, c'>4( <d d'>8) |
    g8-. b-. g-. |
    <c, c'>4( <d d'>8) |
    g8-. b-. g-. |
    <c, c'>4( <d d'>8) |
    
    \barNumberCheck 9
    <g, g'>8-. <a a'>-. <b b'>-. |
    <c c'>8( <d d'>) q-. |
    <g, g'>4. |
    <g' d'>8 q q |
    <fs a d>8 q q |
    <g d'>8 q q |
    <fs a d>8 q q |
    <f a d>8 q q |
    
    \barNumberCheck 17
    <g d' e>8 q q |
    <gs d' e>8 q q |
    <a e'>8 q q |
    <f a d>8 q q |
    <g d' e>8 q q |
    <gs d' e>8 q q |
    <a e'>8 q q |
    <g! e'>8 q q |
    
    \barNumberCheck 25
    <fs! a d>8 q q |
    <g e'>8 q q |
    <fs a d>8 q q |
    <g b d>8 q q |
    <fs a d>8 q q |
    g8-. a-. a,-. |
    d8( e) fs-. |
    <g e'>8 q q |
    
    \barNumberCheck 33
    <fs a d>8 q q |
    <g e'>8 q q |
    <fs a d>8 q q |
    <g b d>8 q q |
    <fs a d>8 q q |
    g8-. a-. a,-. |
    d8-\slurShapeB ( e fs |
    g8 a a,) |
    
    \barNumberCheck 41
    d8-\slurShapeB ( e fs |
    g8 a a,) |
    <d, d'>8-. <e e'>-. <fs fs'>-. |
    <g g'>8( <a a'>) q-. |
    <d, d'>4.-> |
  }
  \repeat volta 2 {
    <d' d'>8 q q |
    <d c'!>8 q q |
    q8 q q |
    
    \barNumberCheck 49
    <d b'>8 q q |
    q8 q q |
    <d a'>8 q q |
    <ds a' b>8 q q |
    <e b'>8 q q |
    <f a d>8 q q |
    <e, e'>4. |
    <d' gs b>8 q q |
    
    \barNumberCheck 57
    <c e a>8 q q |
    <d gs b>8 q q |
    <c e a>8 q q |
    q8 q q |
    <b d g>8 q q |
    <c g'>8 q <cs g' a> |
    d8( d,4) |
    <c'! a'>8 q q |
    
    \barNumberCheck 65
    <b g'>8 q q |
    <c a'>8 q q |
    <b g'>8 q q |
    <c g'>8 q q |
    <b g'>8 q q |
    c8-. d-. d,-. |
    g8( a) b-. |
    <c a'>8 q q |
    
    \barNumberCheck 73
    <b g'>8 q q |
    <c a'>8 q q |
    <b g'>8 q q |
    <c g'>8 q q |
    <b g'>8 q q |
    c8-. d-. d,-. |
    g'8-\slurShapeA ( a b |
    c8 d d,) |
    
    \barNumberCheck 81
    g8-\slurShapeA ( a b |
    c8 d d,) |
    <g, g'>8( <a a'>) <b b'>-. |
    c8( d) d,-. |
    g4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.*7 |
    
    \barNumberCheck 9
    s4.*3 |
    s4.\p |
    s4.*2 |
    s4\mf\> s8\! |
    s4.\p |
    
    \barNumberCheck 17
    s4.*2 |
    s4\mf\> s8\! |
    s4.\p |
    s4.*2 |
    s4\mf\> s8\! |
    s4\p\< s16 s\! |
    
    \barNumberCheck 25
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s16 s4\< s16\! |
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s4.\cresc |
    s4.\f |
    s4. |
    s4\> s8\! |
    s4\p\< s16 s\! |
    
    \barNumberCheck 33
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s16 s4\< s16\! |
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s4.\cresc |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 41
    s8\> s4\p |
    s8 s8.\< s16\! |
    s4.\f |
    s4.*2 |
  }
  \repeat volta 2 {
    s4.\p\< |
    s4 s8\f |
    s4.\p\< |
    
    \barNumberCheck 49
    s4 s8\f |
    s4.\p\< |
    s4 s8\f |
    s16 s\f s4 |
    s4.*3 |
    s4\p\< s16 s\! |
    
    \barNumberCheck 57
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s16 s4\< s16\! |
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s4.\cresc |
    s4.\f |
    s4.*2 |
    s4\p\< s16 s\! |
    
    \barNumberCheck 65
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s16 s4\< s16\! |
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s4.\cresc |
    s4.\f |
    s4. |
    s4\> s8\! |
    s4\p\< s16 s\! |
    
    \barNumberCheck 73
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s16 s4\< s16\! |
    \tag layout { s4\sf\> } \tag midi { s4\f\> } s16 s\! |
    s4.\cresc |
    s4.\f |
    s4. * 3 |
    
    \barNumberCheck 81
    s8\> s4\p |
    s8 s8.\< s16\! |
    s4.-\tweak Y-offset #-1 \f |
    s4.*2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 92
    s4.*40 |
    
    \barNumberCheck 41
    s4.*3 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 84 s \tempo 4. = 76 s |
    \tempo 4. = 69 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 92
    s4.*3 |
    
    \barNumberCheck 49
    s4.*32 |
    
    \barNumberCheck 81
    s4.*3 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 84 s \tempo 4. = 76 s |
          \tempo 4. = 69 s4. |
        }
        {
          \tempo 4. = 80 s8 \tempo 4. = 69 s \tempo 4. = 60 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*8 \break
  s4.*8 \break
  s4.*8 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*6 \break
  s4.*6 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
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
