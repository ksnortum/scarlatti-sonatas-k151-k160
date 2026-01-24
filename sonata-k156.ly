%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in C major"
  opus = "K.156"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/1/12/IMSLP626962-PMLP476809-Sonata_K._156_(as_L._101).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((-0.4 . 0) (-.4 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (-0.5 . 1) (-0.5 . -0.5)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -1) (0 . -0.6) (0.2 . -0.3) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 2)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((-0.5 . 1.2) (-0.5 . 1.2) (0.2 . 1) (0 . 0.3))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . 1)) \etc
slurShapeH = \shape #'((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.5))
                        ((-0.4 . 0) (-0.4 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.25)) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 3) (0 . 3) (-0.2 . 3) (-0.2 . 3))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (-0.4 . 0) (-0.4 . 0))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -2) (0 . -2) (0 . -2) (0 . -2))
                      ) \etc

tieShapeA = \shape #'((-0.5 . 1) (-0.5 . 1.3) (1 . 1.3) (1 . 1)) \etc
tieShapeB = \shape #'((-0.5 . 1) (-0.5 . 1.3) (1 . 1.3) (1 . 1)) \etc

moveDotA = \offset Y-offset #-1.3 \etc
moveDotB = \offset Y-offset #-1.3 \etc

%
% Music
%

global = {
  \time 4/4
  \key c \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    r8 g''16( f e8 d  c) b( c d |
    e8) b( c d  e) c'16-\slurShapeA ( a g4~ |
    g8) f16\( d  c8 \grace { b32( } \afterGrace 15/16 b8)\trill { a32 b }
      c8-.\) c'16( a g4~ |
    g8) f16-\slurShapeB \( d  c8 \grace { b32( } \afterGrace 15/16 b8)\trill
      { a32 b }  \voiceFour c4\) r8 e16-\slurShapeD ( c |
    d8-.) b16( g  c8-.) e16( c  d4-.) r8 e16( c |
    d8-.) b16( g  c8-.) e16( c  d4-.) r8 ef16( c |
    d4) r8 ef16( c  d4) r8 ef16( c |
    d4) r8 ef16( c \oneVoice d4) \afterGrace 15/16 c(\trill { b32 c } |
    
    \barNumberCheck 9
    \tuplet 3/2 { d16)-\slurShapeH ( b e } d8~ d4) \tupletOff 
      \tuplet 3/2 { d16( b g' } d8~ d4) |
    \tuplet 3/2 { d16( b b' } d,8~ d4) \tuplet 3/2 { d16-\slurShapeI ( b d' }
      d,8~ d4~ |
    d16) c32( \sdb #1 d  e16 c32 a  b8-.) \grace { a32( } \afterGrace 15/16
      a8)-\slurShapeJ (\trill { g32 a } g8-.)\noBeam \grace { b'32( c } d8)
      c16( b32 \sdb #1 a g16 fs32 e |
    \tupletOn \tuplet 3/2 { d16)-\slurShapeK ( b e } d8~ d4) \tupletOff
      \tuplet 3/2 { d16( b g' } d8~ d4) |
    \tuplet 3/2 { d16( b b' } d,8~ d4) \tuplet 3/2 { d16-\slurShapeL ( b d' }
      d,8~ d4~ |
    d16) c32( \sdb #1 d  e16 c32 a  b8-.) \grace { a32( } \afterGrace 15/16
      a8)(\trill { g32 a } g8-.) d'-. e32( c a8.) |
    d32( b g8.)  a'8.(\trill g32 a  b8-.) d,-.  e32( c a8.) |
    d32( b g8.)  a'8.(\trill g32 a  g8)\noBeam d,-.
      e16( fs32 \sdb #1 g a16 b32 c |
    
    \barNumberCheck 17
    g'8-.) g,-.  a8.(\trill g32 a  g'8-.)\noBeam d,-.
      e16( fs32 \sdb #1 g a16 b32 c |
    g'8-.) g,-.  a8.(\trill g32 a  g'8-.) g,-.  a8.(\trill g32 a |
    \alternative {
      { g'8-.) g,-.  a8.(\trill g32 fs  g8-.) r r4 | }
      {  
        \set Score.voltaSpannerDuration = #(ly:make-moment 5/8)
        g'8-\moveDotA -.-\tieShapeA \repeatTie g,-.  a8.(\trill g32 fs
          g8-.)\noBeam
        \repeat volta 2 { 
          \partial 4. d'8-. \tupletOn \tuplet 3/2 { f!16( e d } c8-.) |
          \voiceOne r8 e4 d8-.  e-. e-. \tupletOff \tuplet 3/2 { f16( e d }
            c8-.) |
          b8 e4 d8-.  e-. e-. \tuplet 3/2 { f16( e d } gs8-.) |
          \override Parentheses.font-size = #-2
          a4. <d, b'>8-. <\parenthesize c c'>-. e \tuplet 3/2 { f16( e d }
            gs8-.) |
          a4. <d, b'>8-. \oneVoice <e c'>-. a-. \tuplet 3/2 { c16( b a }
            g!8-.) |
          
          \barNumberCheck 25
          \voiceOne r4 r8 a->~  a b-. \tuplet 3/2 { c16( b a } g8-.) |
          r4 r8 a->~  a4 a-> |
          a8-. s4. \tuplet 3/2 { \osp #'(0 . -1.5) g16[( fs g] } \hideNoteHead
            a8) s4 |
          \tuplet 3/2 { \osp #'(0 . -1.5) g16[( fs g] } \hideNoteHead a8) s2. |
          \tuplet 3/2 { \osp #'(0 . -1.5) f16[( e f] } \hideNoteHead g8) s4
            \tuplet 3/2 { \osp #'(0 . -1.5) f16[( e f] } \hideNoteHead g8) s4 |
          s2 \tuplet 3/2 { \osp #'(0 . -1.5) e16[( d e] } \hideNoteHead f8)
            s4 |
          \tuplet 3/2 { \osp #'(0 . -1.5) e16[( d e] } \hideNoteHead f8) s4
            \oneVoice <c e>16-. a'32-\slurShapeM ( \sdb #1 g f16 e32 d
            c16 e32 \sdb #1 d c16 b32 a |
          \tupletOn \tuplet 3/2 { g16)( e a } g8~ g4) \tupletOff
            \tuplet 3/2 { g16( e c' } g8~ g4) |
          
          \barNumberCheck 33
          \tuplet 3/2 { g16( e e' } g,8~ g4~  g16) f32-\slurShapeN (
            \sdb #1 g a16 g32 a  d8.-\insideSlur \trill c32 d |
          \tuplet 3/2 { g16)( e a } g8~ g4) \tuplet 3/2 { g16( e c' } g8~ g4) |
          \tuplet 3/2 { g16( e e' } g,8~ g4~  g16) f32( g a16 f32 d  e8-.)
            \grace { d32( } \afterGrace 15/16 d8)(\trill { c32 d } |
          c8-.) g'-.  a32( f d8.)  g32( e c8.) d,8.(\trill c32 d |
          e8-.) g'-.  a32( f d8.)  g32( e c8.) d,8.(\trill c32 b |
          c8-.) g'-.  a16( b32 \sdb #1 c d16 e32 f  c'8-.) c,-. d8.(\trill
            c32 d |
          c'8-.) g,-.  a16( b32 \sdb #1 c d16 e32 f  c'8-.) c,-. d8.(\trill
            c32 d |
          c'8-.) c,-. d8.(\trill c32 d c8-.)
        }
      }
    }
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*3 |
    s2 \voiceOne r8 a''16-\slurShapeC ( f g4~ |
    g2~ g8) a16-\slurShapeE ( f g4~ |
    g2~ g8) c16-\slurShapeF ( a bf4~ |
    bf8) a16( fs g4)  r8 c16-\slurShapeG ( a bf4~ |
    bf8) a16( fs g4) s2 |
    
    \barNumberCheck 9
    s1*8 |
    
    \barNumberCheck 17
    s1*2 |
    \alternative {
      { s1 | }
      {  
        s8*5
        \repeat volta 2 { 
          \partial 4. s4. |
          \voiceFour b,8-.\noBeam c( b) a-. gs4. r8 |
          r8 c( b) a-.  gs4. b8-. |
          % 1st beat, voice three, e f e according to an urtext
          << { a4. } \new Voice { \voiceThree e'8[( f e]) } >> s s4. b8-. |
          << { a4. } \new Voice { \voiceThree e'8[( f e]) } >> s s2 |
          
          \barNumberCheck 25
          fs8-. e-. ds-. c(  b) r r4 |
          fs'8-. e-. ds-. c(  b e ds e |
          ds8-.)\noBeam <fs a>^( <e g>) <ds fs>^.  e <fs a>^. <e g>^.
            <ds fs>^. |
          e8 \oneVoice <fs a>-. <e g>-. <ds fs>-.  <e g>-. q( <d f>) <cs e>-. |
          \voiceFour d \oneVoice <e g>-. <d f>-. <cs e>-. \voiceFour d
            \oneVoice <e g>-. <d f>-. <cs e>-. |
          <d f>-. q( <c! e>) <b d>-. \voiceFour c \oneVoice <d f>-. <c e>-.
            <b d>-. |          
          \voiceFour c \oneVoice <d f>-. <c e>-. <b d>-. s2 |
          s1 |
          
          \barNumberCheck 33
          s1*7 |
          s8*5
        }
      }
    }
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s1*2 |
    s2. s8 \hideNoteHead c'( |
    \voiceThree a8) f'( e d) s2 |
    s1*4 |
    
    \barNumberCheck 9
    s1*8 |
    
    \barNumberCheck 17
    s8 g,4( fs8) s2 | 
    s8 g4( fs8) s2 |
    \alternative {
      { s1 | }
      {  
        s8*5
        \repeat volta 2 {
          \partial 4. s4. |
          s1*4 |
          
          \barNumberCheck 25
          s4 \clef treble a'  a8 r r s |
          s4 a a a |
          a4. <fs a>8-.  <e g>( <ds fs>-.) <e g>-. <fs a>-. |
          <e g>8( <ds fs>-.) <e g>-. <fs a>-.  g4. <e g>8-. |
          <d f>8( <cs e>-.) <d f>-. <e g>-. <d f>8( <cs e>-.) <d f>-. <e g>-. |
          f4. <d f>8-.  <c! e>( <b d>-.) <c e>-. <d f>-. |
          <c e>8( <b d>-.) <c e>-. <d f>-.  e8-. s4. |
          \clef bass s8 e-. d4->  s8 e-. d4-> |
          
          \barNumberCheck 33
          s8 e-. d4-> s2  |
          \clef treble s8 <e g>-. <d g>4->  s8 <e g>-. <d g>4-> |
          s8 <e g>-. <d g>4-> s2 |
          s2 \clef bass  s8 c4( b8) |
          s2 s8 c4 r8 |
          s2 s8 c4( b8) |
          s8 c4( b8) s8 \osp #'(0 . -2) c4( b8 |
          \hideNoteHead c8) s4. s8 
        }
      }
    }
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \parenthesize c8 r r4  r8 g''16( f e8 d |
    c8) g16( f e8 d  c4.) e'8( |
    f8) a( g f  c4.) <e, c'>8_( |
    \voiceTwo f4) g \oneVoice c,4. \clef treble c''8-. |
    b8-. g-. e-. c-.  g4.-> c'8-. |
    b8-. g-. e-. c-.  g4.-> g'8-. |
    fs8-. d-. ef-.[ c-.]  d4.-> g8-. |
    fs8-. d-. ef-.[ c-.]  r <d fs?>( <e! g> <fs a>) |
    
    \barNumberCheck 9
    \addStaccato {
      r8 <g b> <fs a> <d fs>  r <g b> <fs a> <d fs> |
      \clef bass r8 <g, b> <fs a> <d d'>  r <g b> <fs a> <d d'> |
    }
    g8-. c( d-.) d,(  g,4) r |
    \addStaccato {
      \clef treble r8 <g'' b> <fs a> <d fs>  r <g b> <fs a> <d fs> |
      \clef bass r8 <g, b> <fs a> <d d'>  r <g b> <fs a> <d d'> |
    }
    g8-. c( d-.) d,(  g,8-.) b'-. r \clef treble <c e> |
    r8 <b d>( <c e> <d fs>  g,-.) g'-. r <c, e>-. |
    r8 <b d>( <c e> <d fs>)  r \clef bass b-. c-. c,-. |
    
    \barNumberCheck 17
    r8 \voiceTwo b( c d) \oneVoice r b'-. c-. c,-. |
    r8 \voiceTwo b( c d) \oneVoice r <b' d>( <c e> <a c> |
    % 1st ending
    \alternative {
      { 
        <b d>8-.) <b, b'>-. <c c'>-. <d d'>-.  \stemDown g,-.[ g'16( f! e8-.)
          d-.] | 
      }
      {  
        <b' d-\tieShapeB \repeatTie>8-\moveDotB -. <b, b'>-. <c c'>-. <d d'>-.
          <g, g'>-.
        \repeat volta 2 { 
          \partial 4. \stemNeutral r8 r \clef treble a''-. |
          gs8-. a( gs) f!-.  e4. a8-. |
          gs8-. a( gs) f-.  e4. d8-. |
          c8( d c) <b gs'>-.  <a a'>4.-> d8-. |
          c8( d c) <b gs'>-.  <a a'>4.-> b'8-. |
          
          \barNumberCheck 25
          <a c>8-. <g b>-. \voiceTwo fs[( e]  ds4.) \oneVoice b'8-. |
          <a c>8-. <g b>-. \voiceTwo fs[( e]  ds c b c |
          b4) b b b |
          b4 b e4. a,8-. |
          a4 a a a |
          d4. g,8-. g4 g |
          g4 g c8-. \oneVoice r r4 |
          \clef bass r8 \voiceTwo c-. b( g) \oneVoice r \voiceTwo c-. b( g) |
                    
          \barNumberCheck 33
          \oneVoice r8 \voiceTwo c-. b( g) \oneVoice \stemDown
            \osp #'(-0.5 . -1) e( f g g,) |
          \clef treble r8 \voiceTwo c'-. b( g) \oneVoice r \voiceTwo c-.
            b( g) |
          \oneVoice r \voiceTwo c-. b( g) \clef bass \oneVoice <e c'>( f g-.)
            g,( |
          c8-.) <e c'>-. r <f b>-.  r \voiceTwo \osp #'(0 . -2) e( f g |
          \oneVoice c,-.) <e c'>-. r <f b>-.  r \voiceTwo e-\slurShapeO ( f g |
          \oneVoice c,-.) <e c'>-. r <f c'>-.  r \voiceTwo e( f g) |
          \oneVoice r \voiceTwo e( f g) \oneVoice r \voiceTwo e( f g |
          \oneVoice <c, c'>) <a a'>-. <f f'>-. <g g'>-. <c, c'>8-. 
        }
      }
    }
  }
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2\p s8 s4.-\tweak Y-offset #1 \cresc |
    s2 s\f |
    s2 s8 s4.-\tweak Y-offset #-2 \p |
    s2 s8 s4.-\tweak extra-offset #'(0 . -1.5) \f |
    s2 s8 s4.\p |
    s2 s8 s4.\f |
    s2 s8 s4.\p |
    s2 s8 s4\< s8\! |
    
    \barNumberCheck 9
    s2-\tweak Y-offset #-1 \f s\p\cresc |
    s2 s\f |
    s1 |
    s2 s-\tweak Y-offset #-1.5 \p-\tweak extra-offset #'(0 . -1) \cresc |
    s2 s\f |
    s2 s8 s4.\p |
    s4 s2\f s4\p |
    s4 s2.\f |
    
    \barNumberCheck 17
    s1*2 |
    \alternative {
      { s1 | }
      {
        s8*5
        \repeat volta 2 {
          \partial 4. s4.\p |
          s8 s4.-\tweak Y-offset #-1.5 \f s8 s4.\p |
          s8 s4.-\tweak Y-offset #-1.5 \f s8 s4.\p\cresc |
          s1 |
          s2 s\f |
          
          \barNumberCheck 25
          s1*2 |
          s2 s4-\tweak Y-offset #1 \> s-\tweak Y-offset #0.5 \p |
          s2 s8 s4.\f |
          s4-\tweak Y-offset #1 \> s-\tweak Y-offset #0.5 \p s2 |
          s8 s4.\f s4\> s\p |
          s1\cresc |
          s2\f s4\p s-\tweak Y-offset #1.5 \cresc |
          
          \barNumberCheck 33
          s1 |
          s1\f |
          s1 |
          s4 s2\p s4\mf |
          s4 s2\p s4\mf |
          s1\f |
          s1 |
          s8*5 
        }
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 92
    s1*16 |
    
    \barNumberCheck 17
    s1*2 |
    \alternative {
      { 
        \tempo 4 = 84 s4 \tempo 4 = 76 s \tempo 4 = 60 s8 \tempo 4 = 92 s4. | 
      }
      {
        \tempo 4 = 84 s4 \tempo 4 = 76 s \tempo 4 = 60 s8
        \repeat volta 2 { 
          \partial 4. \tempo 4 = 92 s4. | 
          s1*4 |
          
          \barNumberCheck 25
          s1*8 |
          
          \barNumberCheck 33
          s1*7
          \tag layout { s8*5 }
          \tag midi {
            \alternative {
              { \tempo 4 = 84 s4 \tempo 4 = 76 s \tempo 4 = 60 s8 }
              { \tempo 4 = 80 s4 \tempo 4 = 69 s \tempo 4 = 10 s8 }
            }
          }
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*2 \break
  s1*2 \break
  s1*2 \break
  s1*2 \break
  s1*2 \break
  s1*2 \pageBreak
  
  % page 3
  s1*2 \break
  s1*2 \break
  s1*2 \break
  s1*2 \break
  s1*3 \break
  s1*3 \pageBreak
  
  % page 3
  s1*3 \break
  s1*2 \break
  s1*2 \break
  s1*2 \break
  s1*2 \break
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
