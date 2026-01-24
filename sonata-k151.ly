%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in F major"
  opus = "K.151"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/4/42/IMSLP626957-PMLP476114-Sonata_K._151_(as_L._330).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . -0.5) (0 . 1.5) (-1 . -1.5)) \etc
slurShapeB = \shape #'((-0.75 . 2) (0 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (2 . -2) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 2.5) (0 . -2) (0 . -2) (0 . 3.5)) \etc
slurShapeE = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0.6)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . -1) (0 . 0.5) (0 . 1) (0 . -1)) \etc
slurShapeH = \shape #'((0 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . -1) (0 . 1) (0 . -1))
                      ) \etc
slurShapeJ = \shape #'(
                        ((-1 . 1) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . -1) (0 . -1) (0 . 0))
                      ) \etc
slurShapeM = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.75) (0 . 2.75) (0 . 2.75) (0 . 2.75))
                      ) \etc
slurShapeO = \shape #'((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0)) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . -0.5) (0 . -0.5) (0 . 2.5))
                      ) \etc
slurShapeQ = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -2)) \etc

%
% Music
%

global = {
  \time 3/8
  \key f \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    f''8-\slurShapeE ( a g |
    f8\prall e f |
    c4.~ |
    c8) bf'( a |
    g8 e c) |
    cs8( d bf') |
    b,8( c a') |
    a,8( bf! g') |
    
    \barNumberCheck 9
    a,8-\slurShapeF ( a' f |
    c8 a f |
    g8) \osp #'(0 . 2.5) g'( e |
    bf8 g e |
    f4.) |
    c'4.\prall |
    f4.\prall |
    \grace { g16( a) } bf4.\prall |
    
    \barNumberCheck 17
    \osp #'(0 . 2.5) a8( f c |
    a8-.) g4\prall |
    \osp #'(0 . 2.5) a'8( f c |
    a8-.) g4\prall |
    \stemUp gs8( a f') |
    fs,8( g! e') |
    \osp #'(-1 . -1) e,8( f d' |
    \stemNeutral e8 c g |
    
    \barNumberCheck 25
    e8-.) d4\prall |
    \osp #'(0 . 2.5) e'8( c g |
    e8-.) d4\prall |
    \stemDown \osp #'(-1 . -1) e8( e' c |
    g8 e' c |
    a e' c |
    g8 e' c |
    f,8 e' c |
    
    \barNumberCheck 33
    g8 g' e |
    a,8 a' d, |
    c8-.) \grace { b16( } \afterGrace 15/16 b4)-\slurShapeH (\trill { a16 b } |
    c4.) |
    <c e>4._\mordent _\trillNatural |
    <c e>4._\mordent _\trillNatural |
    <c e>4._\mordent _\trillNatural |
    <c e>4._\mordent _\trillNatural |
    
    \barNumberCheck 41
    \grace { e16( f) } g4.(~ |
    g8 a e |
    d8-.) \appoggiatura { d16 } c4(\trill |
    b8) f'( e |
    d8 c b |
    c4.) |
    <c e>4._\mordent _\trillNatural |
    <c e>4._\mordent _\trillNatural |
    
    \barNumberCheck 49
    <c e>4._\mordent _\trillNatural |
    <c e>4._\mordent _\trillNatural |
    \grace { e16( f) } g4.(~ |
    g8 a d, |
    c8-.) \grace { b16( } \afterGrace 15/16 b4)(\trill { a16 b } |
    c8) fs( g |
    g,8 e' c |
    a8) gs'( a |
    
    \barNumberCheck 57
    a,8) b'( c) |
    \stemNeutral g,8.\( a16 b c |
    \grace { d16( } \afterGrace 15/16 d4.)\trill { e16 d } |
    c8\) fs( g |
    g,8 e' c |
    a8) gs'( a |
    a,8) b'( c) |
    \stemNeutral g,8.\( a16 b c |
    
    \barNumberCheck 65
    \grace { d16( } \afterGrace 15/16 d4.)\trill { c16 d }
    \addStaccato {
      c8\) g' e |
      c8 g e |
    }
    R4.*3 |
  }
  \repeat volta 2 {
    c'8-\slurShapeK ( ef d |
    c8\prall b c |
    
    \barNumberCheck 73
    g4.~ |
    g8) f'( ef |
    \acciaccatura { f8 } ef d c) |
    \acciaccatura { d8 } c4( b8 |
    c4.) |
    \acciaccatura { fs8 } g4. |
    \acciaccatura { b8 } c4. |
    \acciaccatura { a!8 } bf!4.(~ |
    
    \barNumberCheck 81
    bf8 af) f-. |
    d8-. af-. f-. |
    fs8( g ef') |
    e,!8( f d') |
    d,8( ef c') |
    d,8( ef c') |
    d,8( ef c') |
    ds,8( e! c') |
    
    \barNumberCheck 89
    ds,8( e c') |
    ds,8( e c') |
    e,8( f d') |
    e,8( f d') |
    \osp #'(0 . 1) ds8( e c |
    b8 f' b, |
    a8) \grace { gs16( } \afterGrace 15/16 gs4)(\trill { fs16 gs } |
    a8) a'( f |
    
    \barNumberCheck 97
    e8 bf'! e, |
    d8-.) \grace { cs16( } \afterGrace 15/16 cs4)( { b16 cs) } |
    \appoggiatura { cs16 } d4. |
    \appoggiatura { ds?16 } e4. |
    \appoggiatura { e16 } f4. |
    \appoggiatura { fs?16 } g4. |
    \osp #'(0 . 2.5) a8( f! c |
    a8-.) g4\prall |
    
    \barNumberCheck 105
    f'8-\slurShapeN ( d a |
    f8-.) e4\prall |
    d'8( bf f |
    d8-.) c4\prall |
    \grace { d16( } \afterGrace 15/16 d4.)-\slurShapeO \( { cs16 d } |
    % The odd durations in the grace notes are to prevent a warning from the
    % articulate.ly script
    \grace { e16*1/2( } \afterGrace 15/16 e4.) { d16 e } |
    \grace { f16*1/2( } \afterGrace 15/16 f4.) { e16 f } |
    \grace { g16*1/2( } \afterGrace 15/16 g4.) { f16 g } |
    
    \barNumberCheck 113
    <f a>8\)^( <g bf> <a c>~ |
    q8 <g bf> <f a>~ |
    q8 <e g> <f a>~ |
    q8 <c g'> <f a>~ |
    q8 <c g'> <f a>~ |
    <f c'>8 <g bf> <f a>_~ |
    << 
      { \voiceOne a8 g16-\insideSlur \prall f g8) | } 
      \new Voice { \voiceFour c,4. | } 
    >>
    \oneVoice R4.\fermata |
    
    \barNumberCheck 121
    R4.*2 |
    f'8( af g |
    f8-\insideSlur \prall e f |
    g8 af bf |
    c8 af f |
    g8 af bf |
    f8-.) \grace { e16( } \afterGrace 15/16 e4)( { d16 e } |
    
    \barNumberCheck 129
    f4.) |
    r8 << { a(\prall c) } \\ { f,4 } >> |
    r8 << { a(\prall c) } \\ { f,4 } >> |
    r8 << { a(\prall c) } \\ { f,4 } >> |
    r8 << { a(\prall c) } \\ { f,4 } >> |
    << 
      { r8 \voiceOne a(\prall( c)~ | } 
      \new Voice { s8 \voiceFour f,4 | } % Source has a dotted quarter 
    >>
    \oneVoice c'8 <d, bf'>( <c a'> |
    <bf g'>8 <a f'> <g e'> |
    
    \barNumberCheck 137
    <a f'>4.) |
    r8 << { a(\prall f') } \\ { f,4 } >> |
    r8 << { a(\prall f') } \\ { f,4 } >> |
    r8 << { a(\prall f') } \\ { f,4 } >> |
    r8 << { a(\prall f') } \\ { f,4 } >> |
    r8 << { a(\prall f') } \\ { f,4 } >> |
    r8 d'\( d, |
    f4 \grace { e16( } \afterGrace 15/16 e8)\trill { d16 e } |
    
    \barNumberCheck 145
    f8\)\noBeam c''( a |
    e8 f c |
    cs8 d bf |
    e, f) f'-. |
    \set subdivideBeams = ##t
    f,8.( \tuplet 3/2 { g32 f e } f16 g |
    \appoggiatura { a16 } g4.\trill |
    f8)\noBeam c''( a |
    e8 f c |
    
    \barNumberCheck 153
    cs8 d bf |
    e, f) f'-. |
    f8.( \tuplet 3/2 { g32 f e } f16 g |
    \appoggiatura { a16 } g4.-\insideSlur \trill |
    \addStaccato {
      f8) c a |
      f c a |
    }
    R4. |
  }
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4.*32 |
    
    \barNumberCheck 33
    \voiceThree \hideNoteHead c'4.~ |
    c8 c( f |
    e8-.) d4( |
    \hideNoteHead c8) s4 |
    s4.*4 |
    
    \barNumberCheck 41
    s4.*3 |
    \voiceTwo g4. |
    g4. |
    s4.*3 |
    
    \barNumberCheck 49
    s4.*3 |
    \voiceThree r4 f'8-\slurShapeJ ( |
    e8 d4 |
    \hideNoteHead c4.) |
    s4.*2 |
    
    \barNumberCheck 57
    c4-\slurShapeQ ( f8 |
    \hideNoteHead e4.) |
    s4.*4 |
    c4-\slurShapeQ ( f8 |
    \hideNoteHead e4.) |
    
    \barNumberCheck 65
    s4.*6 |
  }
  \repeat volta 2 {
    s4.*2 |
    
    \barNumberCheck 73
    s4.*2 |
    f,4 f'8-\slurShapeB (~ |
    f8 ef d |
    \hideNoteHead c8) s4 |
    s4.*3 |
    
    \barNumberCheck 81
    s4.*8 |
    
    \barNumberCheck 89
    s4.*6 |
    \voiceTwo e,4. |
    s4. |
    
    \barNumberCheck 97
    s4. |
    a4. |
    s4.*6 |
    
    \barNumberCheck 105
    s4.*16 |
    
    \barNumberCheck 121
    s4.*6 |
    \clef treble \voiceThree f'4-\slurShapeD ( g8 |
    af8 g bf |
    
    \barNumberCheck 129
    \hideNoteHead f8) s4 |
    s4.*7 |
    
    \barNumberCheck 137 |
    s4.*6 |
    \clef bass bf,,4 bf'8(~ |
    bf8 a g |
    
    \barNumberCheck 145
    \hideNoteHead f4.) |
    s4.*7 |
    
    \barNumberCheck 153
    s4.*7 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4.*2 |
    \clef treble f'8( a g |
    f8\prall e f |
    c4.) |
    bf'8( g e |
    a8 f d |
    g e c |
    
    \barNumberCheck 9
    f4.) |
    \clef bass <a, f'>4.( |
    <bf f'>4. |
    <c e>4.) |
    f,8-\slurShapeG ( d' bf |
    e,8 c' a |
    d,8 bf' g |
    c,8 g' e |
    
    \barNumberCheck 17
    f8 a c |
    f8 e c) |
    f,8( a c |
    f8 e c) |
    f8( d b |
    e8 c a |
    d8 b g) |
    c,8( e g |
    
    \barNumberCheck 25
    c b g) |
    c,8( e g |
    c b g |
    c4.) |
    <e, c'>4._( |
    <f c'>4. |
    <g c>4. |
    <a c>4. |
    
    \barNumberCheck 33
    <e c'>4. |
    \voiceTwo f4.) |
    g4. |
    \oneVoice c8 g'-\slurShapeI ( e |
    c8 e c |
    a8 e' c |
    g8 e' c |
    f,8 e' c |
    
    \barNumberCheck 41
    e,8 e' c |
    f,4.) |
    <fs c' d>4.-> |
    \voiceThree g8( d' e |
    f8 e d |
    \oneVoice c8) g'-\slurShapeA ( e |
    c8 e c |
    a8 e' c |
    
    \barNumberCheck 49
    g8 e' c |
    f,8 e' c |
    e,8 e' c |
    \voiceTwo f,4.) |
    g4. |
    c4. |
    <e, c'>4._( |
    <f c'>4.) |
    
    \barNumberCheck 57
    \voiceTwo f4.( |
    \oneVoice <g e'>4.) |
    <g d'>4.( |
    <c, c'>4.) |
    <e c'>4._( |
    <f c'>4.) |
    \voiceTwo f4.( |
    \oneVoice <g e'>4.) |
    
    \barNumberCheck 65
    <g d'>4.( |
    <c, c'>4.) |
    c4.-> |
    \addStaccato {
      c'8 g e |
      c g e |
    }
    c4.-> |
  }
  \repeat volta 2 {
    R4.*2 |
    
    \barNumberCheck 73
    c''8( ef d |
    c8\prall b c |
    \voiceTwo f,4.) |
    g4. |
    \oneVoice c8 af'-\slurShapeL ( f |
    bf,! g' ef |
    af,8 f' d |
    g,8 ef' bf |
    
    \barNumberCheck 81
    f4. |
    bf4.) |
    ef8( c a |
    d8 b g |
    c8 a fs |
    c'8 a fs |
    c'8 a fs |
    e!8) c'( a |
    
    \barNumberCheck 89
    e8 c' a |
    e8 c' a |
    d,8 b' gs |
    d8 b' gs) |
    c,8-\slurShapeC ( e a |
    d,8 a' d |
    \voiceThree c8 b d |
    \oneVoice f,8) d'( f |
    
    \barNumberCheck 97
    g,8 e' g |
    \voiceThree f8 e g) |
    \oneVoice bf,!8-\slurShapeM ( fs' g |
    \clef treble c,8 gs' a |
    d,8 a' bf |
    e,8 b' c) |
    \clef bass f,,8( a c |
    f8 e c) |
    
    \barNumberCheck 105
    d,8( f a |
    d8 c a) |
    bf,8( d f |
    bf8 a f) |
    bf,8( fs' g |
    c,8 gs' a |
    d,8 a' bf |
    e,8 b' c |
    
    \barNumberCheck 113
    f,4.) |
    bf,4. |
    c,4. |
    c4. |
    c4. |
    c4. |
    c4. |
    R4.\fermata |
    
    \barNumberCheck 121
    \clef treble f''8( af g |
    f8\prall e f |
    df4.) |
    <c f af>4. |
    <bf e g>4. |
    <af c f>4. |
    \voiceTwo bf4. |
    c4. |
    
    \barNumberCheck 129
    \oneVoice f8 c'_( a! |
    f8 a f |
    d8 a' f |
    c8 a' f |
    bf,8 a' f |
    a,8 a' f |
    bf,4. |
    c4. |
    
    \barNumberCheck 137
    \clef bass f,8) c'-\slurShapeP ( a |
    f8 a f |
    d8 a' f |
    c8 a' f |
    bf,8 a' f |
    a,8 a' f |
    \voiceTwo bf,4.) |
    c4. |
    
    \barNumberCheck 145
    \oneVoice f4. |
    <a f'>4._( |
    <bf f'>4.) |
    <bf, bf'>4.( |
    <c c'>4.) |
    c,4.( |
    f4.) |
    <a' f'>4._( |
    
    \barNumberCheck 153
    <bf f'>4.) |
    <bf, bf'>4.( |
    <c c'>4.) |
    c,4.( |
    f4.) |
    R4. |
    \override Parentheses.font-size = #-2
    <f \parenthesize f'>4. |
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
    s4.\p |
    s4.*4 |
    s4\> s8\! |
    s4\> s8\! |
    s4\> s8\! |
    
    \barNumberCheck 9
    s4.\p |
    s4.-\tweak Y-offset #0.5 \cresc |
    s4.*2 |
    s4\mf\> s8\! |
    s4.\p\cresc |
    s4. |
    s4.-\tweak Y-offset #0.5 \f |
    
    \barNumberCheck 17
    s4.*4 |
    s4\p\> s8\! |
    s4\> s8\! |
    s4. |
    s4.\mf |
    
    \barNumberCheck 25
    s4.*3 |
    s4-\tweak Y-offset #-1.5 \> s8\! |
    s4.-\tweak Y-offset #-1.5 \p |
    s4.-\tweak Y-offset #-1 \cresc |
    s4.*2 |
    
    \barNumberCheck 33
    s4.*2 |
    s4.-\tweak Y-offset #1 \f |
    s8 s4\p |
    s8 s4\cresc |
    s4.*3 |
    
    \barNumberCheck 41
    s4.\f |
    s4.*2 |
    s8 s4-\tweak Y-offset #1 \p |
    s4. |
    s16 s-\tweak Y-offset #-1 \cresc s4 |
    s4.*2 |
    
    \barNumberCheck 49
    s4.*2 |
    s4.-\tweak extra-offset #'(0 . -1.5) \f |
    s4.*5 |
    
    \barNumberCheck 57
    s4.*3 |
    s8 s4\p |
    s4.\cresc |
    s4.*3 |
    
    \barNumberCheck 65
    s4.\f |
    s4.*5 |
  }
  \repeat volta 2 {
    s4.-\tweak Y-offset #-2.5 \p |
    s4. |
    
    \barNumberCheck 73
    s4.*4 |
    s4.\cresc |
    s4. |
    s4.\f |
    s4. |
    
    \barNumberCheck 81
    s4.*2 |
    s4\p\> s8\! |
    s4\> s8\! |
    s4\> s8\! |
    s4\> s8\! |
    s4-\tweak Y-offset #-0.5 \> s8\! |
    s4.-\tweak Y-offset #-1 \cresc |
    
    \barNumberCheck 89
    s4.*4 |
    s4.\mf |
    s4.*2 |
    s8 s4\f |
    
    \barNumberCheck 97
    s4.*2 |
    s8 s4\p |
    s4.\cresc |
    s4.*2 |
    s4.-\tweak extra-offset #'(0 . -1.5) \f |
    s4. |
    
    \barNumberCheck 105
    s4.*4 |
    s8\p s4\cresc |
    s4.*3 |
    
    \barNumberCheck 113
    s4.\f |
    s4. |
    s4.\dim |
    s4.*2 |
    s4.\p |
    s4.*2 |
    
    \barNumberCheck 121
    s4.\p |
    s4.*3 |
    s4.\< |
    s4.\! |
    s4.*2 |
    
    \barNumberCheck 129
    s8\f s4\p |
    s4.\cresc |
    s4.*3 |
    s8 s4\f |
    s4.*2 |
    
    \barNumberCheck 137
    s8 s4\p |
    s4.\cresc |
    s4.*4 |
    s4.-\tweak Y-offset #-2 \f |
    s4. |
    
    \barNumberCheck 145
    s8 s4-\tweak extra-offset #'(0 . -1) \f |
    s4.*5 |
    s8 s4\p |
    s4.\cresc |
    
    \barNumberCheck 153
    s4.*2 |
    s4.\f |
    s4.*4 |
  }
}

pedal = {
  \repeat volta 2 {
    s4.*24 |
    
    \barNumberCheck 25
    s4.*4 |
    s4.\sd |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    
    \barNumberCheck 33
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    % Source does not have this measure
    s4.\su |
    s4.*2 |
    s4.\sd |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    
    \barNumberCheck 41
    s4.\su |
    s4.*7 |
    
    \barNumberCheck 49
    s4.*16 |
    
    \barNumberCheck 65
    s4.*6 |
  }
  \repeat volta 2 {
    s4.*2 |
    
    \barNumberCheck 73
    s4.*56 |
    
    \barNumberCheck 129
    s4.*2 |
    s4.\sd |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    s4.\su |
    s4. |
    
    \barNumberCheck 137
    s4.*2 |
    s4.\sd |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    \tag layout { s4.\sd } \tag midi { s4.\sud } |
    s4.\su |
    s4. |
    
    \barNumberCheck 145
    s4.*8 |
    
    \barNumberCheck 153
    s4.*7 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 116
    s4.*64 |
    
    \barNumberCheck 65
    s4.*4 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 108 s8 \tempo 4. = 100 s \tempo 4. = 92 s |
    \tempo 4. = 84 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 116
    s4.*2 |
    
    \barNumberCheck 73
    s4.*40 |
    
    \barNumberCheck 113
    s4.*6 |
    \tempo 4. = 108 s8 \tempo 4. = 100 s \tempo 4. = 92 s |
    \tempo 4. = 84 s4. |
    
    \barNumberCheck 121
    \tempo 4. = 116
    s4.*32 |
    
    \barNumberCheck 153
    s4.*5 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 108 s8 \tempo 4. = 100 s \tempo 4. = 92 s |
          \tempo 4. = 84 s4. |
        }
        {
          \tempo 4. = 104 s8 \tempo 4. = 92 s \tempo 4. = 80 s |
          \tempo 4. = 60 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*9 \break
  s4.*9 \break
  s4.*9 \break
  s4.*9 \break
  s4.*9 \break
  s4.*8 \pageBreak
  
  % page 2
  s4.*8 \break
  s4.*9 \break
  s4.*9 \break
  \grace { s8 } s4.*9 \break
  s4.*9 \break
  s4.*8 \pageBreak
  
  % page 3
  s4.*8 \break
  s4.*10 \break
  s4.*9 \break
  s4.*9 \break
  s4.*9 \break
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
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
