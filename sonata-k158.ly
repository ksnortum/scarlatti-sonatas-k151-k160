%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in C minor"
  opus = "K.158"
  source = "https://s9.imslp.org/files/imglnks/usimg/7/7e/IMSLP626964-PMLP477986-Sonata_K._158_(as_L._4).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0.75) (0 . 0.75) (0 . 0.75) (0 . 0.75)) Slur
slurShapeB = \shape #'(
                        ((-0.25 . -3) (0 . -1.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((-0.25 . -3) (0 . -3) (0 . -3) (0 . -3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . -0.5) (0 . 0) (0 . 0.5) (0 . -1)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.25)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeH = \shape #'((-3 . -2) (-3 . 3) (0 . 1) (0 . -0.75)) \etc
slurShapeI = \shape #'((0 . 0.6) (0 . 0.6) (0 . 0.75) (0 . 0.75)) Slur
slurShapeJ = \shape #'((0 . 0) (0 . 0) (0 . 0.25) (0 . 0.25)) \etc
slurShapeK = \shape #'((-2 . 1.5) (-4 . -1) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key c \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    g''8( ef c |
    b8 g) <af d>(~ |
    q8 c d |
    ef8 f g |
    af8) c,( b) |
    \appoggiatura { b16 } c4. |
    r8 ef,16( f32 g af8~ |
    af8) g16( a32 b c8~ |
    
    \barNumberCheck 9
    c8) b16( c32 d ef8~ |
    ef8) d16( ef32 f g8 |
    f8) ef8.(\trill d32 ef) |
    \appoggiatura { \slurShapeA ef16 } d4 r8 |
    r8 ef,16( f32 g af8~ |
    af8) g16( af32 bf c8~ |
    c8) bf16( c32 d ef8~ |
    ef8) d32( c64 d ef f g af bf8-.) |
    
    \barNumberCheck 17
    c8 ef,( d) |
    \appoggiatura { d16 } ef4. |
    r8 d32( f ef g f8~ |
    f8) ef32( g f af g8~ |
    g8) f32( af g bf af8~ |
    af8) g32( bf af c bf8~ |
    bf8 c c,) |
    \appoggiatura { ef16 } d4\prall ef8( |
    
    \barNumberCheck 25
    c'8) ef,( d) |
    \appoggiatura { d16 } ef4. |
    r8 d32( f ef g f8~ |
    f8) ef32( g f af g8~ |
    g8) f32( af g bf af8~ |
    af8) g32( bf af c bf8) |
    b8( c) c,-. |
    \appoggiatura { ef32 } d4\prall ef8( |
    
    \barNumberCheck 33
    c'8) ef,( d) |
    \appoggiatura { d16 } ef4. |
    \voiceOne ef4. |
    ef4. |
    ef4. |
    \oneVoice \tuplet 3/2 { af,16( g f } g8-. f-. |
    ef4.) |
    <d d'>8( <ef ef'>4) |
    
    \barNumberCheck 41
    \stemUp <f f'>8( <ef ef'>4) |
    \stemNeutral c''8( bf d, |
    \tag layout { ef4.)\prallprall } \tag midi { ef)\prall } |
    <d, d'>8( <ef ef'>4) |
    \stemUp <f f'>8( <ef ef'>4) |
    \stemNeutral c''8( bf d, |
    ef16) g( ef bf g bf) |
    \acciaccatura { bf8 } \tuplet 3/2 { af16-\slurShapeD ( g f } ef8-. d-.) |
    
    \barNumberCheck 49
    \appoggiatura { d8 } ef4. |
  }
  \repeat volta 2 {
    r16 <g ef'>-\slurShapeF ( <af f'>4~ |
    q16) <g ef'>-\slurShapeF ( <af f'>4~ |
    q16) <g ef'>( \voiceOne f'4) |
    e4( f8 |
    g4.) |
    \oneVoice af,8.(\prall g16 f8) |
    r16 <af f'>( <bf g'>4~ |
    
    \barNumberCheck 57
    q16) <af f'>( <bf g'>4~ |
    q16)[ << { c] } \new Voice { \voiceOne c } >> \voiceOne
      af'8-\slurShapeH ( g |
    f8 ef d |
    \oneVoice ef f g |
    d8) c8.(\trill b32 c) |
    \appoggiatura { c16 } d4( <g, ef'>8) |
    \voiceOne \appoggiatura { ef'16 } \osp #'(2.5 . 2.5) d4( c8) |
    \oneVoice \stemDown <g c>8( b4~ |
    
    \barNumberCheck 65
    b8) c( d |
    g,8. a32 b c8~ |
    c8) b16( c32 d ef8~ |
    ef8) d16( ef32 f g8 |
    f8) ef8.(\trill d32 ef) |
    \appoggiatura { \slurShapeI ef16 } d4. |
    r8 b32( d c ef d8~ |
    d8) c32( ef d f ef8~ |
    
    \barNumberCheck 73
    ef8) d32( f ef g f8~ |
    f8) ef32( g f af g8 |
    c8) c,( b) |
    \appoggiatura { b16 } c4. |
    r8 b32( d c ef d8~ |
    d8) c32( ef d f ef8~ |
    ef8) d32-\slurShapeJ ( f ef g f8~ |
    f8) ef32( g f af g8 |
    
    \barNumberCheck 81
    c8) c,( b) |
    \appoggiatura { b16 } c4. |
    \voiceOne c'4. |
    c4. |
    c4. |
    \oneVoice \tuplet 3/2 { \osp #'(-0.5 . 0) f,16( ef d } <c ef>8 <b d>-.) |
    \appoggiatura { q16 } c4. |
    \voiceOne c4. |
    
    \barNumberCheck 89
    c4. |
    c4. |
    \oneVoice \tuplet 3/2 { f,16( ef d } <c ef>8 <b d>-.) |
    \appoggiatura { q16 } c4. |
    <b b'>8( <c c'>4) |
    <d d'>8( <c c'>4) |
    af''8( g b,) |
    \tag layout { c4.\prallprall } \tag midi { c\prall } |
    
    \barNumberCheck 97
    <b b'>8( <c c'>4) |
    <d d'>8( <c c'>4) |
    af'8( g b,) |
    \appoggiatura { b16 } c4. |
    af8( g b,) |
    \appoggiatura { b8 } c4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*32 |
    
    \barNumberCheck 33
    s4.*2 |
    \voiceFour c''8(\prall bf4) |
    af8(\prall g4) |
    f8(\prall ef4) |
    s4.*3 |
    
    \barNumberCheck 41
    s4.*8 |
    
    \barNumberCheck 49
    s4. |
  }
  \repeat volta 2 {
    s4.*2 |
    s8 af-\slurShapeK ( bf~ |
    bf8 df c |
    bf8 af g) |
    s4.*2 |
    
    \barNumberCheck 57
    s4. |
    s16 \hideNoteHead c~ c4~ |
    c4 b8 |
    s4.*3 |
    g4. |
    s4. |
    
    \barNumberCheck 65
    s4.*16 |
    
    \barNumberCheck 81
    s4.*2 |
    af'8(\prall g4) |
    f8(\prall ef4) |
    d8(\prall c4) |
    s4.*2 |
    af8(\prall g4) |
    
    \barNumberCheck 89
    f8(\prall ef4) |
    d8(\prall c4) |
    s4.*6 |
    
    \barNumberCheck 97
    s4.*6 |
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
    s4.*4 |
    \voiceThree <c' d>8 <c ef>( d) |
    s4.*3 |
    
    \barNumberCheck 9
    s4.*8 |
    
    \barNumberCheck 17
    <ef f>8 <ef g>( f) |
    s4. |
    bf,8( f' d) |
    g,8( ef' bf) |
    f8( d' af) |
    ef8( ef' bf) |
    af8( ef' f) |
    s4. |
    
    \barNumberCheck 25
    <ef f>8 <ef g>( f) |
    s4. |
    bf,8( f' d) |
    g,8( ef' bf) |
    f8( d' af) |
    ef8( ef' bf) |
    af8( ef' f) |
    s4. |
    
    \barNumberCheck 33
    <ef f>8 <ef g>( f) |
    s4.*7 |
    
    \barNumberCheck 41
    s4.*8 |
    
    \barNumberCheck 49
    s4. |
  }
  \repeat volta 2 {
    s4.*7 |
    
    \barNumberCheck 57
    s4.*4 |
    g4( f8) |
    s4.*3 |
    
    \barNumberCheck 65
    s4.*2 |
    d4( c8) |
    <c d>(~ <b d> c) |
    <f, g b>8 <g c>4 |
    s4. |
    af8( f' d) |
    g,8( ef' c) |
    
    \barNumberCheck 73
    f,8( d' b) |
    ef,8( c' g) |
    <c d>8 <c ef>( d) |
    s4. |
    af8( f' d) |
    g,8( ef' c) |
    f,8( d' b) |
    ef,8( c' g) |
    
    \barNumberCheck 81
    <c d>8 <c ef>( d) |
    s4.*7 |
    
    \barNumberCheck 89
    s4.*8 |
    
    \barNumberCheck 97
    s4.*6 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4.*2 |
    \osp #'(0 . 1) <af f'>8_( <g ef'> <f d'> |
    <ef c'>8 <d b'> <c c'> |
    \voiceTwo f8) g4 |
    \oneVoice c8( c,) r |
    c'4 <f, c'>8( |
    <ef c'>4) <af! c>8( |
    
    \barNumberCheck 9
    <g d'>4) c8( |
    <b g'>4) ef8( |
    <d f>8 <c ef>) \osp #'(-2 . 0) c,_( |
    g'8 d g,) |
    c'4 <f, c'>8( |
    <ef bf' ef>4) <af c>8( |
    <g ef'>4) c8_( |
    <bf f'>4 <g bf ef>8 |
    
    \barNumberCheck 17
    \voiceTwo af8) bf4 |
    \oneVoice ef8( g ef) |
    \voiceTwo bf4.-\slurShapeB ( |
    g4. |
    f4. 
    ef4. |
    af4.) |
    \oneVoice <af bf d f>4_( <g bf ef>8 |
    
    \barNumberCheck 25
    \voiceTwo af8) bf4 |
    \oneVoice ef8( g ef) |
    \voiceTwo bf4.-\slurShapeC ( |
    g4. |
    f4. 
    ef4. |
    af4.) |
    \oneVoice <af bf d f>4_( <g bf ef>8 |
    
    \barNumberCheck 33
    \voiceTwo af8) bf4 |
    \oneVoice ef8( f g) |
    af4( g8) |
    f4( ef8) |
    af,4( g8) |
    af8( bf bf, |
    ef8 f g ) |
    <af bf>4 <g bf>8( |
    
    \barNumberCheck 41
    <af c>4 <g bf>8) |
    af8( bf bf, |
    ef8 f g) |
    <af bf>4 <g bf>8( |
    <af c>4 <g bf>8) |
    af8( bf bf, |
    ef8 f g) |
    af8-\slurShapeE ( bf-. bf,-.) |
    
    \barNumberCheck 49
    ef4. |
  }
  \repeat volta 2 {
    ef'4(\prall \> d8)\! |
    ef4(\prall \> d8)\! |
    ef4-\slurShapeG (\prall df8 |
    c4. |
    e4. |
    f8 c f,) |
    f'4(\prall \> e8)\! |
    
    \barNumberCheck 57
    f4(\prall \> e8)\! |
    f4_(\prall ef!8 |
    d4 g8 |
    <c, ef g>4 <bf d g>8 |
    \voiceTwo <af c>4.) |
    \oneVoice g8.( a32 b c8~ |
    c8) b16( c32 d ef8~ |
    ef8) d16( ef32 f g8 |
    
    \barNumberCheck 65
    f8) <ef g>_( <d f> |
    <c ef>8 <bf d> <af! c> |
    \voiceTwo g8 f ef) |
    f4( ef8) |
    d8 ef( c) |
    \oneVoice g'8( g' d) |
    \voiceTwo \osp #'(-2.5 . -2.5) af4.( |
    g4. |
    
    \barNumberCheck 73
    f4. |
    ef4. |
    f8) g4 |
    \oneVoice c8( g' ef) |
    \voiceTwo \osp #'(-2.5 . -2.5) af,4.( |
    g4. |
    f4. |
    ef4. |
    
    \barNumberCheck 81
    f8) g4 |
    \oneVoice c8( d ef) |
    \clef treble f'4( ef8) |
    d4( c8) |
    <f, af>4( <ef g>8) |
    f8( g g, |
    c8 d ef) |
    f4( ef8) |
    
    \barNumberCheck 89
    d4( c8) |
    \clef bass <f, af>4( <ef g>8) |
    \stemDown f8( g g, |
    c8 d ef) |
    <f g>4 <ef g>8( |
    <f af>4 <ef g>8) |
    f8( g g,) |
    c'8( d ef |
    
    \barNumberCheck 97
    <f g>4) <ef g>8( |
    <f af>4 <ef g>8) |
    f8( g g, |
    c8 d ef) |
    f,8( g g, |
    \stemUp <c, c'>4.) |
  }
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.-\tweak Y-offset #-1 \p |
    s4 s8-\tweak extra-offset #'(0 . -1) \mf |
    s4.*3 |
    \grace { s16\> } s8 s4\p |
    s4.\p |
    s4.\cresc |
    
    \barNumberCheck 9
    s4. |
    s4.-\tweak Y-offset #0 \mf ||
    s4. |
    s4\> s8\! |
    s4.\p |
    s4.\cresc |
    s4. |
    s4-\tweak Y-offset #-1 \< s8-\tweak Y-offset #-1.5 \f |
    
    \barNumberCheck 17
    s4.-\tweak Y-offset #0.5 \p |
    s4\> s8\! |
    s8 s4-\tweak Y-offset #1 \p |
    s4. |
    s4.\cresc |
    s4. |
    s4.\mf |
    s4. |
    
    \barNumberCheck 25
    s4. |
    s4\> s8\! |
    s4.\pp |
    s4. |
    s4.-\tweak Y-offset #1 \cresc |
    s4. |
    s4.-\tweak Y-offset #0.5 \p |
    s4. |
    
    \barNumberCheck 33
    s4. |
    s4\> s8\! |
    s4\mf\> s8\! |
    s4.-\tweak Y-offset #-1.5 \p |
    s4.*3 |
    s4.-\tweak Y-offset #-2 \mf |
    
    \barNumberCheck 41
    s4.*3 |
    s4.\p |
    s4.*2 |
    s4.\cresc |
    s4.\mf |
    
    \barNumberCheck 49
    \grace { s8\> } s4.\! |
  }
  \repeat volta 2 {
    s8\mf\< s4\! |
    s8\p\< s4\! |
    s16 s\< s4\! |
    s4.\cresc |
    s4.\mf |
    s4\> s8\! |
    s8\mf\< s4\! |
    
    \barNumberCheck 57
    s8-\tweak Y-offset #0.5 \p-\tweak Y-offset #0.5 \< s4\! |
    s16 s\< s8\! s\mf |
    s4.*3 |
    s8.\> s\p |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 65
    s4. |
    s4.-\tweak Y-offset #-1.5 \mf |
    s8\p s4\cresc |
    s4. |
    s4.-\tweak Y-offset #0 \mf |
    s4\> s8\! |
    s4.\p |
    s4. |
    
    \barNumberCheck 73
    s4.\cresc |
    s4. |
    s4.\mf |
    s4\> s8\! |
    s4.\pp |
    s4. |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 81
    s4.\p |
    s4-\tweak Y-offset #1 \> s8\! |
    s4\mf\> s8\! |
    s4.\p |
    s4.*4 |
    
    \barNumberCheck 89
    s4.*4 |
    s4.\mf |
    s4.*3 |
    
    \barNumberCheck 97
    s4.\p |
    s4.*3 |
    s4.-\tweak Y-offset #-2 \mf |
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Andante " 4. = 40
    s4.*40 |
    
    \barNumberCheck 41
    s4.*7 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 36 s \tempo 4. = 32 s |
    
    \barNumberCheck 49
    \tempo 4. = 28 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 40
    s4.*7 |
    
    \barNumberCheck 57
    s4.*40 |
    
    \barNumberCheck 97
    s4.*4 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 36 s \tempo 4. = 32 s |
          \tempo 4. = 28 s4. |
        }
        {
          \tempo 4. = 36 s8 \tempo 4. = 32 s \tempo 4. = 28 s |
          \tempo 4. = 24 s8 \tempo 4. = 15 s4 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*7 \break
  s4.*6 \break
  s4.*7 \break
  s4.*7 \pageBreak
  
  % page 2
  s4.*8 \break
  s4.*7 \break
  s4.*7 \break
  s4.*7 \break
  s4.*6 \pageBreak
  
  % page 3
  \grace { s16 } s4.*6 \break
  \grace { s16 } s4.*6 \break
  \grace { s16 } s4.*7 \break
  s4.*7 \break
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
