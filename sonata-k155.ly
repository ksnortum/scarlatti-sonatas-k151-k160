%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in B♭ major"
  opus = "K.155"
  source = "https://ks15.imslp.org/files/imglnks/usimg/9/90/IMSLP626961-PMLP476614-Sonata_K._155_(as_L._197).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 3) (0 . -3)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -0.5))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (2 . 0) (2 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (2 . 0) (2 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeG = \shape #'((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -1)) \etc
slurShapeI = \shape #'((0 . -0.25) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . -1.5)) \etc
slurShapeK = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                         ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                       ) \etc
slurShapeL = \shape #'((0 . -1.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

tieShapeA = \shape #'((-0.5 . 0.75) (-0.5 . 1) (1 . 1) (1 . 0.75)) \etc
tieShapeB = \shape #'((-0.5 . -0.75) (-0.5 . -1) (1 . -1) (1 . -0.75)) \etc

%
% Music
%

global = {
  \time 3/8
  \key bf \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \addStaccato {
      r8 f'' d |
      bf f' d |
      bf bf' f |
    }
    \acciaccatura { g8 } f( ef c') |
    \acciaccatura { f,8 } ef( d bf') |
    \acciaccatura { ef,8 } d( c a') |
    bf16( f d bf f'8) |
    \acciaccatura { g8 } f( ef c') |
    
    \barNumberCheck 9
    \acciaccatura { f,8 } ef( d bf') |
    \acciaccatura { ef,8 } d( c a') |
    bf16-\slurShapeA ( f d bf f d |
    << 
      { \staffDown \hideNoteHead bf,8)\noBeam } 
      \new Voice { \oneVoice r } 
    >>
    \staffUp f'''-. d-. |
    ef8-. ef-. fs-. |
    g8-. g16-\slurShapeB ( f! ef d |
    c8-\insideSlur \prall b) c-. |
    \addStaccato {
      g8 g' e |
      
      \barNumberCheck 17
      f8 f gs |
    }
    a8-. a16-\slurShapeC ( g! f e |
    d8-\insideSlur \prall ^\trillNatural cs) d-. |
    \addStaccato {
      a8 a' a |
      a8 a a |
      bf8 g g |
      g8 g g |
    }
    a16( g f e d c |
    
    \barNumberCheck 25
    bf16 a g f e d |
    c8)\prall c16-\slurShapeD ( d e f |
    g16 a bf c d e |
    f16 g a bf c bf |
    a8) g(\prall f) |
    c,8-. c16( d e f |
    g16 a bf c d e |
    f16 g a bf c bf |
    
    \barNumberCheck 33
    a8) g(\prall f) |
    c8-. g'16( e a f |
    bf8-.) a16( f bf g |
    c8-.) bf16( g c a |
    d8-.) e,( f) |
    bf8-. d,( e) |
    g8 bf,( b |
    c8-.) bf'!4-> |
    
    \barNumberCheck 41
    \tuplet 3/2 { a16( g f } a8) g-.\prall |
    f8-. g16( e a f |
    bf8-.) a16( f bf g |
    c8-.) bf16( g c a |
    d8-.) e,( f) |
    bf8-. d,( e) |
    g8 bf,-\slurShapeF ( b |
    c8-.) bf'!4-> |
    
    \barNumberCheck 49
    \tuplet 3/2 { a16( g f } a8) g-.\prall |
    f8-. a16( g f e) |
    \acciaccatura { f8 } e16( d c bf a g |
    a8-.) f'16( e d c) |
    \acciaccatura { d8 } c16-\slurShapeG ( bf a g f e |
    f8-.)\noBeam  a'16( g f e) |
    \acciaccatura { f8 } e16( d c bf a g |
    a8-.) f'16( e d c) |
    
    \barNumberCheck 57
    \acciaccatura { d8 } c16-\slurShapeG ( bf a g f e |
    f4.) |
  }
  r8 f'-. d-. |
  \repeat volta 2 {
    \addStaccato {
      bf8 f' d |
      bf8 bf' g |
    }
    \acciaccatura { bf8 } af8( g16 f ef d |
    bf'16 af g f ef d |
    c8-.) d8.(\trill c32 d |
    
    \barNumberCheck 65
    ef8-.) bf'-. g-. |
    ef8\prall c'-. a!-. |
    fs8-.\prall d16-\slurShapeL ( c bf a |
    g8-\insideSlur \prall fs) g-. |
    d16-\slurShapeH ( ef fs g a bf |
    c16 d ef fs g a |
    bf8-\insideSlur \prall a) g-. |
    d,16-\slurShapeH ( ef fs g a bf |
    
    \barNumberCheck 73
    c16 d ef fs g a |
    bf8-\insideSlur \prall a) g-. |
    d8-. f16( d ef c |
    b8-.) af'16( f g ef |
    d8-.) d'4(~\prall |
    d16 c b af g f |
    ef8-.) c'4-\slurShapeI (~\prall |
    c16 bf a! g f ef |
    
    \barNumberCheck 81
    d8-.) bf'16-\slurShapeM ( a g f |
    ef16 d c bf a g |
    f8)\prall \noBeam f16( g a bf |
    c16 d ef f g f |
    ef8-\insideSlur \prall d) ef-. |
    ef,8-.\prall \noBeam ef16 -\slurShapeJ ( f g a |
    bf16 c d ef f ef |
    d8-\insideSlur \prall c) d-. |
    
    \barNumberCheck 89
    d,16( ef f g a bf |
    c16 d ef f g f |
    ef8\prall d) c-. |
    bf8(\prall a) g-. |
    f8-.\noBeam c'16( a d bf |
    ef8-.) d16( bf ef c |
    f8-.) ef16( c f d |
    g8-.) a,( bf) |
    
    \barNumberCheck 97
    ef8-. g,( a) |
    c8-. ef,( e |
    f8-.) ef'!4-> |
    \tuplet 3/2 { d16( c bf } d8) c-.\prall |
    bf8-.\noBeam c16( a d bf |
    ef8-.) d16( bf ef c |
    f8-.) ef16( c f d |
    g8-.) a,( bf) |
    
    \barNumberCheck 105
    ef8-. g,( a) |
    c8-. ef,( e |
    f8-.) ef'!4-> |
    \tuplet 3/2 { d16( c bf } d8) c-.\prall |
    bf8-.\noBeam d'16( c bf a) |
    \acciaccatura { bf8 } a16( g f ef d c |
    d8-.)\noBeam bf'16( a g f) |
    \acciaccatura { g8 } f16( ef d c bf a |
    
    \barNumberCheck 113
    bf8-.)\noBeam d'16( c bf a) |
    \acciaccatura { bf8 } a16( g f ef d c |
    d8-.)\noBeam bf'16( a g f) |
    \acciaccatura { g8 } f16-\slurShapeK ( ef d c bf a |
    bf16)( d bf f' bf,8-.) |
    bf'8-. \appoggiatura { d,32 } c4(\trill |
    bf16 d bf f' bf,8-.) |
    bf'8-. \appoggiatura { d,32 } c4(\trill |
    
    \barNumberCheck 121
    bf16 d bf f' bf,8-.) |
    bf'8-. \appoggiatura { d,32 } c4(\trill |
    \alternative {
      { bf8-.) f'-. d-. | }
      { bf4.->-\tieShapeA \repeatTie | }
    }
  }
  \fine
}

leftHand = \relative{
  \global
  \clef bass
  \repeat volta 2 {
    bf,8 r r |
    R4. |
    r4 d'8-. |
    c4 a8-. |
    bf4 d,8-. |
    ef4 f8-. |
    bf,4 d'8-. |
    c4 a8-. |
    
    \barNumberCheck 9
    bf4 d,8-. |
    ef4 f8-. |
    bf,8-. r r |
    bf8-. r r |
    \clef treble d''8-. c-. c-. |
    b8-. \clef bass g16( f! ef d |
    c8 b) c-. |
    g8-. r r |
    
    \barNumberCheck 17
    \clef treble e''-. d-. d-. |
    cs8-. \clef bass a16( g! f e |
    d8 cs) d-. |
    a8-. a'16( g fs e |
    d8-.) d16( c bf a |
    g8-.) g'16( g e d |
    c8-.) c16( bf a g |
    \osp #'(-2 . -2.5) f4.)_( |
    
    \barNumberCheck 25
    bf,4. |
    c8) c16-\slurShapeE ( d e f |
    g16 a bf c d e |
    \clef treble f16 g a bf c bf |
    a8) g( f) |
    \clef bass c,8-.\noBeam \osp #'(-3.5 . 0) c16( d e f |
    g16 a bf c d e |
    \clef treble f16 g a bf c bf |
    
    \barNumberCheck 33
    a8) g( f) |
    \addStaccato {
      c8 e f |
      g8 f g |
      a8 g a |
    }
    bf8-. bf( a) |
    g8-. g( f) |
    e8-. e( d |
    c4) \clef bass e8-. |
    
    \barNumberCheck 41
    f8( c) c,-. |
    \addStaccato {
      f8\noBeam \clef treble e' f |
      g8 f g |
      a8 g a |
    }
    bf8-. bf( a) |
    g8-. g( f) |
    e8-. e( d |
    c4) \clef bass e8-. |
    
    \barNumberCheck 49
    f8( c) c,-. |
    f4 a8-. |
    g4 e8-. |
    f4 a,8-. |
    bf4 c8-. |
    f,4 a'8-. |
    g4 e8-. |
    f4 a,8-. |
    
    \barNumberCheck 57
    bf4 c8-. |
    f,8-.\noBeam f'16( ef! d c |
  }
  bf8-.) r r |
  \repeat volta 2 {
    R4.*2 |
    \addStaccato {
      \clef treble r8 af'' af |
      g8 g g |
    }
    af8-. bf( af |
    
    \barNumberCheck 65
    g8-.) r r |
    R4. |
    \clef bass r8 d16( c bf a |
    g8 fs) g-. |
    d16( ef fs g a bf |
    \clef treble c16 d ef fs g a |
    bf8 a) g-. |
    \clef bass d,16( ef fs g a bf |
    
    \barNumberCheck 73
    \clef treble c16 d ef fs g a |
    bf8 a) g-. |
    \addStaccato {
      d8 d d |
      <d f>8 q q |
      <d f af>8 q q |
      \clef bass <g, d' f>8 q q |
      <c ef>8 q q |
      <f, c' ef>8 q q |
    }
    
    \barNumberCheck 81
    <bf d>8-.\noBeam \clef treble bf'16-\slurShapeN ( a g f |
    \clef bass ef16 d c bf a g |
    f8)\noBeam f16( g a bf |
    c16 d ef f g f |
    ef8 d) ef-. |
    ef,8-.\noBeam ef16( f g a |
    bf16 c d ef f ef |
    d8 c) d-. |
    
    \barNumberCheck 89
    d,16( ef f g a bf |
    c16 d ef f g f |
    ef8 d) c-. |
    bf8( a) g-. |
    \addStaccato {
      f8\noBeam a bf |
      c8 bf c |
      d8 c d |
    }
    ef8-. ef( d) |
    
    \barNumberCheck 97
    c8-. c( bf) |
    a8-. a( g |
    f4) a8-. |
    bf8( f) f,-. |
    \addStaccato {
      bf8-.\noBeam a' bf |
      c8 bf c |
      d8 c d |
    }
    ef8-. ef( d) |
    
    \barNumberCheck 105
    c8-. c( bf) |
    a8-. a( g |
    f4) a8-. |
    bf8( f) f,-. |
    bf4 d'8-. |
    c4 a8-. |
    bf4 d,8-. |
    ef4 f8-. |
    
    \barNumberCheck 113
    bf,4 d'8-. |
    c4 a8-. |
    bf4 d,8-. |
    ef4 f8-. |
    bf,8-. c-. d-. |
    ef8-. f( f, |
    bf8-.) c-. d-. |
    ef8-. f( f, |
    
    \barNumberCheck 121
    bf8-.) c-. d-. |
    ef8-. f( f, |
    \alternative {
      { bf8-.) r r | }
      { bf4.-\tieShapeB _\repeatTie | }
    }
  }
  \fine
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.*6 |
    s4.-\tweak Y-offset #0 \p |
    
    \barNumberCheck 9
    s4.*2 |
    s4.\f |
    s8 s4\p |
    s4 s8\< |
    s8\! s4-\tweak Y-offset #1 \f |
    s4. |
    s8 s4\p |
    
    \barNumberCheck 17
    s4 s8\< |
    s8\! s4-\tweak Y-offset #1 \f |
    s4. |
    s8 s4-\tweak Y-offset #1 \p |
    s4.-\tweak Y-offset #1 \cresc |
    s4.*3 |
    
    \barNumberCheck 25
    s4. |
    s4.\f |
    s4.*3 |
    s8\f s4\p |
    s4.*2 |
    
    \barNumberCheck 33
    s4. |
    s8 s4\cresc |
    s4.*2 |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 41
    s4. |
    s8 s4\p\cresc |
    s4.*2 |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 49
    s4.*5 |
    s8 s4\p |
    s4. |
    s8 s4\cresc |
    
    \barNumberCheck 57
    s4. |
    s4.\f |
  }
  s8 s4\f |
  \repeat volta 2 {
    s4.*2 |
    s8 s4\p |
    s4.*2 |
    
    \barNumberCheck 65
    s8 s4\f |
    s4.*6 |
    s4.\p |
    
    \barNumberCheck 73
    s4.*2 |
    s8 s4-\tweak Y-offset #-2 \p |
    s4. |
    s8 s4-\tweak Y-offset #-1 \f |
    s16 s\p s4 |
    s8 s4\f |
    s16 s\p s4 |
    
    \barNumberCheck 81
    s8 s4\f |
    s4. |
    s8 s4\p\cresc |
    s4. |
    s4.-\tweak Y-offset #1 \f |
    s8 s4\p\cresc |
    s4. |
    s4.-\tweak Y-offset #1 \f |
    
    \barNumberCheck 89
    s4.*4 |
    s8 s4\p\cresc |
    s4.*2 |
    s4.-\tweak Y-offset #0.5 \f |
    
    \barNumberCheck 97
    s4.*4 |
    s8 s4\p\cresc |
    s4.*2 |
    s4.\f |
    
    \barNumberCheck 105
    s4.*8 |
    
    \barNumberCheck 113
    s8 s4\p |
    s4. |
    s8 s4\cresc |
    s4. |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 121
    s4.*2 |
    \alternative {
      { s4. | }
      { s4. | }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 96
    s4.*56 |
    
    \barNumberCheck 57
    s8 \tempo 4. = 88 s \tempo 4. = 80 s |
    \tempo 4. = 72 s8 \tempo 4. = 96 s4 |
  }
  s4. |
  \repeat volta 2 {
    s4.*5 |
    
    \barNumberCheck 65
    s4.*56 |
    
    \barNumberCheck 121
    s4. |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        { 
          s8 \tempo 4. = 88 s \tempo 4. = 80 s |
          \tempo 4. = 72 s8 \tempo 4. = 96 s4 |
        }
        { 
          \tempo 4. = 84 s8 \tempo 4. = 72 s \tempo 4. = 63 s |
          \tempo 4. = 50 s4. | 
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  \grace { s8 } s4.*7 \break
  s4.*7 \break
  s4.*6 \break
  s4.*6 \break
  s4.*7 \pageBreak
  
  % page 2
  s4.*7 \break
  s4.*7 \break
  \grace { s8 } s4.*7 \break
  \grace { s8 } s4.*7 \break
  s4.*6 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*7 \break
  s4.*7 \break
  s4.*8 \break
  s4.*7 \break
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
