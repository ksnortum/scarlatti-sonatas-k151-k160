%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in C major"
  opus = "K.157"
  source = "https://s9.imslp.org/files/imglnks/usimg/1/1c/IMSLP626963-PMLP476962-Sonata_K._157_(as_L._405).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.3 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) \etc
slurShapeB = \shape #'((0.5 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) \etc
slurShapeC = \shape #'((0 . 0.2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0.4 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (-0.4 . 0))
                      ) \etc
slurShapeH = \shape #'((0.4 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0.4 . 0) (0 . 0) (0 . 0) (-0.4 . 0)) \etc
slurShapeJ = \shape #'((0.4 . 0) (0 . 0) (0 . 0) (-0.4 . 0)) \etc

moveMMRestA = \once \override MultiMeasureRest.staff-position = 0

%
% Music
%

global = {
  \time 3/8
  \key c \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    c''8( e) g-. |
    \addStaccato {
      g8 e g |
      g8 e g |
    }
    g4.->~ |
    g8 g-. c,-. |
    \addStaccato {
      b8 g' c, |
      b8 c d |
      e8 c' c, |
      
      \barNumberCheck 9
      d8 c' b, |
      c8 c' a, |
      b8 c' g, |
      a8 c' f,, |
      g8 c' e,, |
      f8 c'' d,, |
      e8 e' c |
      \stemUp f,8 e' c |
      
      \barNumberCheck 17
      g8 e' c |
      a e' c |
      \stemNeutral b8 b' g |
      c,8 b' g |
      d8 b' g |
    }
    e8( a) g-. |
    fs8( b) a-. |
    gs8( c) b-. |
    
    \barNumberCheck 25
    a8( gs) \osp #'(-2 . 0) a(~ |
    \voiceOne a8 b a) |
    gs8( c) b-. |
    a8( gs) a(~ |
    a8 b a) |
    \acciaccatura { a8 } g!8( fs g |
    % Third beat, e according to an urtext
    a4) e8-. |
    fs8( g a) |
    
    \barNumberCheck 33
    \acciaccatura { a8 } g( fs e) |
    fs4. |
    \oneVoice e8( as b) |
    \voiceOne fs4. |
    \oneVoice e8( as b) |
    \acciaccatura { fs8 } \osp #'(-1 . 0) e( d cs |
    \voiceOne d8 e f!) |
    e4. |
    
    \barNumberCheck 41
    \oneVoice d8( gs a) |
    \voiceOne e4. |
    \oneVoice d8( gs a) |
    \acciaccatura { e8 } \osp #'(-1 . 0) d( c b |
    \voiceOne c8 d e) |
    d4. |
    \oneVoice c8( fs g) |
    \voiceOne d4. |
    
    \barNumberCheck 49
    \oneVoice c8( fs g) |
    \acciaccatura { d8 } c( b a |
    \addStaccato {
      b8) g' g, |
      a8 g' fs, |
      g8 g' e, |
      fs8 g' d, |
      e8 g' c,, |
      d8 g' b,, |
      
      \barNumberCheck 57
      c g'' a,, |
    }
    b8( d) f!-. |
    e8( ds) a'-. |
    g8( fs) c'-. |
    b8( as) f'!-. |
    e8( ds) a'-. |
    g8( fs) <d d'>-. |
    <e c'>8-. <d b'>-. <c a'>-. |
    
    \barNumberCheck 65
    \voiceOne g'4. |
    s8 a4 |
    s8 b4 |
    s8 c4 |
    s8 d4 |
    % This measure according to an urtext (sixths instead of octaves)
    \oneVoice <e, c'>8-. <d b'>-. <c a'>-. |
    \voiceOne g'4. |
    s8 a4 |
    
    \barNumberCheck 73
    s8 b4 |
    s8 c4 |
    s8 d4 |
    \oneVoice <e, c'>8-. <d b'>-. <c a'>-. |
    \voiceOne \osp #'(2.5 . 2) fs8( g4) |
    \oneVoice <e, c'>8-. <d b'>-. <c a'>-. |
    \voiceOne \osp #'(3 . 2.5) fs8( g4) |
    \clef bass \oneVoice <a, c>8-. <g b>-. <fs a>-. |
    
    \barNumberCheck 81
    \tag layout { g4.\prallprall } \tag midi { g\prall } |
  }
  \repeat volta 2 {
    \clef treble g'8( b) d-. |
    \addStaccato {
      f!8 d f |
      f8 d f |
    }
    f4.->-\slurShapeC (~ |
    f8 a) f-. |
    d8(\prall a') f-. |
    d8( g) e-. |
    
    \barNumberCheck 89
    cs8-\slurShapeD ( bf') g-. |
    e8-. g-. e-. |
    cs8( f) e-. |
    \acciaccatura { e8 } d( cs) \osp #'(-2 . 0) d(~ |
    \voiceOne d8 e d) |
    cs8( f) e-. |
    \oneVoice \acciaccatura { e8 } d( cs) \osp #'(-2 . 0) d(~ |
    \voiceOne d8 e d) |
    
    \barNumberCheck 97
    a'4-> g8-. |
    \oneVoice f8( a) d,-. |
    \addStaccato {
      e8 a cs, |
      d8 a' b,! |
      cs8 a' a, |
      bf8 a' g, |
      a8 a' f, |
      g8 a' e, |
    }
    
    \barNumberCheck 105
    fs8( a) c!-. |
    fs8-. a-. c-. |
    bf8(\prall a) g-. |
    ef8(\prall d) c-. |
    f,8( af) b!-. |
    d8-. f-. b-. |
    c8( g) c,-. |
    f8-. ef(\prall d) |
    
    \barNumberCheck 113
    e,!8( g) bf-. |
    df8-. g-. bf-. |
    af8(\prall ^\trillFlat g) f-. |
    df8(\prall ^\trillFlat c) bf-. |
    f8( a!) c-. |
    ef8-. a-. c-. |
    df8( a) bf-. |
    gf8-. f(\prall ^\trillFlat ef) |
    
    \barNumberCheck 121
    f,8( af) bf-. |
    d!8-. f-. af-. |
    gf8(\prall ^\trillFlat f) ef-. |
    cf8(\prall ^\trillFlat bf) af-. |
    s8 \voiceOne gf'4->~ |
    gf8 gf4~ |
    gf8 gf4~ |
    gf8 s4 |
    
    \barNumberCheck 129
    s4. |
    s8 af4->~ |
    af8 af4->~ |
    af8 af4->~ |
    af8 s4 |
    s4. |
    ef8-\slurShapeE ( fs g |
    fs g a |
    
    \barNumberCheck 137
    g4.) |
    \oneVoice e8 g-. c,-. |
    \addStaccato {
      d8 g b, |
      c8 g' a, |
      b8 g' g, |
      a8 g' f, |
      g8 g' e, |
      \stemDown f8 g' d, |
    }
    
    \barNumberCheck 145
    \stemNeutral e8( f g |
    gs8 a) c-. |
    b8( c d |
    ds8 e) f-. |
    g8( gs a |
    b8 c) g!-. |
    f8( e d) |
    \voiceOne e8( f g) |
    
    \barNumberCheck 153
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    \oneVoice <e g>8( <d f> <c e>) |
    
    \barNumberCheck 161
    <f, d'>8-. <e c'>-. <d b'>-. |
    \voiceOne e'( f g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    s8 a( g) |
    
    \barNumberCheck 169
    s8 a( g) |
    \oneVoice <e g>8( <d f> <c e>) |
    <f, d'>8-. <e c'>-. <d b'>-. |
    <e c'>( <f d'>) <g e'>-. |
    <f d'>8-. <e c'>-. <d b'>-. |
    <e c'>( <f d'>) <g e'>-. |
    <f d'>8-. <e c'>-. <d b'>-. |
    \appoggiatura { q8-> } <c c'>4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*24 |
    
    \barNumberCheck 25
    s4. |
    \voiceFour f''4. |
    e8 b\rest b\rest |
    \moveMMRestA R4. |
    f'4. |
    e4.(~ |
    % Third beat, c according to an urtext
    e8 ds) c-. |
    b4. |
    
    \barNumberCheck 33
    b4. |
    e8( cs) d-. |
    s4. |
    e8( cs) d-. |
    s4.*2 |
    b4. |
    d8( b) c-. |
    
    \barNumberCheck 41
    s4. |
    d8( b) c-. |
    s4.*2 |
    a4. |
    c8( a) b |
    s4. |
    c8( a) b |
    
    \barNumberCheck 49
    s4.*16 |
    
    \barNumberCheck 65
    b8( c d) |
    b8\rest e( d) |
    b8\rest e( d) |
    b8\rest e( d) |
    b8\rest e( d) |
    s4. |
    b8( c d) |
    b8\rest e( d) |
    
    \barNumberCheck 73
    b8\rest e( d) |
    b8\rest e( d) |
    b8\rest e( d) |
    s4. |
    b4. |
    s4. |
    b,4. |
    s4. |
    
    \barNumberCheck 81
    s4. |
  }
  \repeat volta 2 {
    s4.*7 |
    
    \barNumberCheck 89
    s4.*4 |
    bf'4. |
    a8 s4 |
    s4. |
    bf4. |
    
    \barNumberCheck 97
    cs8( d) e-. |
    s4.*7 |
    
    \barNumberCheck 105
    s4.*16 |
    
    \barNumberCheck 121
    s4.*4 |
    gf,8^. ef'( bf |
    a!8) ef'( bf |
    a8) ef'( bf |
    a8) \oneVoice <ef' gf>( <df f> |
    
    \barNumberCheck 129
    <c ef>8 <bf df>) <a c>-. |
    bf8-. \voiceFour f'( c |
    b!8) f'( c |
    b8) f'( c |
    b8) \oneVoice <f' af>( <ef g> |
    <d f>8 <c ef>) <b d>-. |
    \voiceTwo <g c>4. |
    d'4. |
    
    \barNumberCheck 137
    b8( c d |
    \hideNoteHead e8) s4 |
    s4.*6 |
    
    \barNumberCheck 145
    s4.*7 |
    c4. |
    
    \barNumberCheck 153
    b8\rest d4 |
    b8\rest c4 |
    b8\rest b4 |
    b8\rest e4 |
    b8\rest d4 |
    b8\rest c4 |
    b8\rest b4 |
    s4. |
    
    \barNumberCheck 161
    s4. |
    c4. |
    b8\rest d4 |
    b8\rest c4 |
    b8\rest b4 |
    b8\rest e4 |
    b8\rest d4 |
    b8\rest c4 |
    
    \barNumberCheck 169
    b8\rest b4 |
    s4.*7 |
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
    s4.*16 |
    
    \barNumberCheck 17
    s4.*5 |
    \clef treble \voiceThree c'8( c') b-. |
    a8( d) c-. |
    b8( e) d-. |
    
    \barNumberCheck 25
    c8( b) c(~ |
    c8 d c) |
    b8( e) d-. |
    c8( b) c(~ |
    c8 d c) |
    b8( as b |
    \oneVoice <fs a!>4) <fs a c>8-. |
    \voiceThree a4. |
    
    \barNumberCheck 33
    s4.*2 |
    b4. |
    s4. |
    b4. |
    s4.*3 |
    
    \barNumberCheck 41
    a4. |
    s4. |
    a4. |
    s4.*3 |
    g4. |
    s4. |
    
    \barNumberCheck 49
    g4. |
    s4.*7 |
    
    \barNumberCheck 57
    s4.*24 |
    
    \barNumberCheck 81
    s4. |
  }
  \repeat volta 2 {
    s4.*7 |
    
    \barNumberCheck 89
    s4.*2 |
    \clef bass a,8( a') g8-. |
    f8( e) f(~ |
    f8 g f ) |
    a,8( a') g-. |
    f8( e) f(~ |
    f8 g f) |
    
    \barNumberCheck 97
    e4.-> |
    s4.*7 |
    
    \barNumberCheck 105
    s4.*6 |
    ef,4 c'8->(~ |
    c4 b8) |
    
    \barNumberCheck 113
    s4.*6 |
    bf4.(~ |
    bf4 a8) |
    
    \barNumberCheck 121
    s4.*24 |
    
    \barNumberCheck 145
    c4.~ |
    \hideNoteHead c4. |
    s4.*2 |
    c4.~ |
    c4. |
    c4( b8) |
    c4. |
    
    \barNumberCheck 153
    s4.*24 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4.*3 |
    \clef treble c'8( e) g-. |
    \addStaccato {
      g8 e g |
      g8 e g |
      g8 a b |
      c8 c, a' |
      
      \barNumberCheck 9
      b8 b, g' |
      a8 a, f' |
      \clef bass g8 g, e' |
      f8 f, d' |
      e8 e, c' |
      d8 d, b' |
      c,8 c' c, |
      d8 c' d, |
      
      \barNumberCheck 17
      e8 c' e, |
      fs8 c' fs, |
      g8 g' g, |
      a8 g' a, |
      b8 g' b, |
    }
    \clef treble \voiceTwo c4. |
    d4. |
    e4. |
    
    \barNumberCheck 25
    f4.( |
    d4.) |
    e4. |
    f4.( |
    d4.) |
    e4. |
    s4. |
    ds8( e fs) |
    
    \barNumberCheck 33
    \oneVoice e8( fs g) |
    <fs as>4 q8-. |
    \voiceTwo g8( fs e) |
    \oneVoice <fs as>4 q8-. |
    \voiceTwo g8( fs e) |
    \oneVoice <fs as>( gs as) |
    b,8( c! d) |
    <e gs>4 q8-. |
    
    \barNumberCheck 41
    \voiceTwo f8( e d) |
    \oneVoice <e gs>4 q8-. |
    \voiceTwo f8(e d) |
    \oneVoice <e gs>( fs gs) |
    a,8( b c) |
    <d fs>4 q8-. |
    \voiceTwo e8( d c) |
    \oneVoice <d fs>4 q8-. |
    
    \barNumberCheck 49
    \voiceTwo e8( d c) |
    \oneVoice <d fs>8( e fs |
    \addStaccato {
      \clef bass g8) g, e' |
      fs8 fs, d' |
      e8 e, c' |
      d8 d, b' |
      c8 c, a' |
      b8 b, g' |
      
      \barNumberCheck 57
      a8 a, fs' |
    }
    g,4-> g'8-. |
    c,4-> a'8-. |
    d,4-> d'8-. |
    g,,4-> g'8-. |
    c,4-> c'8-. |
    d8( c) b-. |
    c8-. d-. d,-. |
    
    \barNumberCheck 65
    g8( a b |
    c8 d d, |
    g8)-\slurShapeA ( a b |
    c8 d d, |
    g8)( a b |
    c-.) d-. d,-. |
    g8( a b |
    c8 d d, |
    
    \barNumberCheck 73
    g8)-\slurShapeB ( a b |
    c8 d d, |
    g8)( a b |
    c-.) d-. d,-. |
    <g, g'>8( <a a'> <b b'>) |
    c8-. d-. d,-. |
    g8( a b |
    c-.) d-. d,-. |
    
    \barNumberCheck 81
    g4.-> |
  }
  \repeat volta 2 {
    R4.*3 |
    g'8( b) d-. |
    f8( d) f-. |
    f8( d) f-. |
    f8( bf) g-. |
    
    \barNumberCheck 89
    e8( g) e-. |
    cs8 e cs |
    \voiceTwo a4. |
    bf4.( |
    g4.) |
    a4. |
    bf4.( |
    g4.) |
    
    \barNumberCheck 97
    a8( b!) cs |
    \clef treble \oneVoice d'( d,) b'!-. |
    \addStaccato {
      c8 c, a' |
      bf8 bf, g' |
      a8 a, f' |
      \clef bass g8 g, e' |
      f8 f, d' |
      e8 cs a |
    }
    
    \barNumberCheck 105
    d,4 d'8-. |
    fs,4 d8-. |
    g8( a bf |
    c8 d) d,-. |
    g4 d'8-. |
    f,4 d8-. |
    \voiceTwo ef4.( |
    f8 g4) |
    
    \barNumberCheck 113
    \oneVoice c,4 c'8-. |
    bf4 e,8-. |
    f8( g af |
    bf8 c) c,-. |
    f4 c'8-. |
    ef,4 a8-. |
    \voiceTwo bf,4( df8 |
    ef8-.) f4 |
    
    \barNumberCheck 121
    \oneVoice bf,4 bf'8-. |
    af4 d,!8-. |
    ef8( f gf |
    af8 bf) bf,-. |
    ef8-. ef'( gf, |
    f8) ef'( gf, |
    f8) ef'( gf, |
    f4.) |
    
    \barNumberCheck 129
    f8( g!) a-. |
    bf8-. f'( f, |
    g8) f'( af, |
    g8) f'( af, |
    g4.) |
    g8( a!) b-. |
    c8-\slurShapeF ( d ef |
    d e! fs |
    
    \barNumberCheck 137
    \clef treble g8 a b |
    c8) c,-. a'-. |
    \addStaccato {
      b8 b, g' |
      a8 a, f' |
      \clef bass g8 g, e' |
      f8 f, d' |
      e8 e, c' |
      d8 d, b' |
    }
    
    \barNumberCheck 145
    \voiceTwo c,8( d e |
    \oneVoice <f c'>4.) |
    g8( a b |
    <c, c'>4.) |
    \voiceTwo c8( f4~ |
    f4) e8-. |
    f8( g4) |
    c,8( d e |
    
    \barNumberCheck 153
    f8 g g, |
    \oneVoice c8)( d e |
    \stemDown f8 g g, |
    c8)-\slurShapeG ( d e |
    f8 g g, |
    c8)( d e |
    f g g, |
    c8)-\slurShapeH ( d e |
    
    \barNumberCheck 161
    f8) g-. g,-. |
    c8( d e |
    f g g, |
    c8)-\slurShapeI ( d e |
    f g g, |
    c8)( d e |
    f g g, |
    c8)-\slurShapeJ ( d e |
    
    \barNumberCheck 169
    f g g, |
    c8)( d e |
    f8) g-. f-. |
    e8( d) c-. |
    f8-. g-. f-. |
    e8( d) c-. |
    f8-. g-. g,-. |
    \stemUp <c, c'>4. |
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
    s4.\f |
    s4.*6 |
    s8 s4\p |
    
    \barNumberCheck 9
    s4.\cresc |
    s4.*5 |
    s8\f s4\p |
    s4.\cresc |
    
    \barNumberCheck 17
    s4.*2 |
    s4.\f |
    s4.*5 |
    
    \barNumberCheck 25
    s4.*2 |
    s8\> s4-\tweak X-offset #1 \p |
    s4.*2 |
    s4.-\tweak Y-offset #-1.5 \mf |
    s4.*2 |
    
    \barNumberCheck 33
    s4.*16 |
    
    \barNumberCheck 49
    s4.*2 |
    s8 s4\p |
    s4.\cresc |
    s4.*4 |
    
    \barNumberCheck 57
    s4. |
    s4.-\tweak Y-offset #-2.5 \f |
    s4.*6 |
    
    \barNumberCheck 65
    s4-\tweak Y-offset #-1 \> s8\! |
    s4.\p |
    s4.*5 |
    s4.\cresc |
    
    \barNumberCheck 73
    s4.*3 |
    s4.\f |
    s4.*4 |
    
    \barNumberCheck 81
    s4. |
  }
  \repeat volta 2 {
    s4\f s8\p |
    s4.\cresc |
    s4. |
    s4.\f |
    s4.*3 |
    
    \barNumberCheck 89
    s4.*5 |
    s16 s-\tweak Y-offset #2 \> s8 s-\tweak Y-offset #1.5 \p |
    s4.*2 |
    
    \barNumberCheck 97
    s8.-\tweak X-offset #-1.5 \f\> s\! |
    s4-\tweak Y-offset #-1 \> s8-\tweak Y-offset #-1.5 \p |
    s4.-\tweak Y-offset #-1 \cresc |
    s4.*5 |
    
    \barNumberCheck 105
    s4\f\> s8\mf |
    s4. |
    s8\> s4\! |
    s8\> s4\! |
    s4\f\> s8\mf |
    s4. |
    s4.\f |
    s8 \tag layout { s4-\tweak Y-offset #1 \sf } \tag midi { s8\ff s\f } |
    
    \barNumberCheck 113
    s4\f\> s8\mf |
    s4. |
    s8\> s4\! |
    s8\> s4\! |
    s4\f\> s8\mf |
    s4\< s8\! |
    s4.\f |
    s8 \tag layout { s4-\tweak Y-offset #0.5 \sf } \tag midi { s8\ff s\f } |
    
    \barNumberCheck 121
    s4\f\> s8\mf |
    s4\< s8\! |
    s8\> s4\! |
    s8\> s4\! |
    s8 s4-\tweak X-offset #-1 \f |
    s4.*2 |
    s8 s4\mf |
    
    \barNumberCheck 129
    s4. |
    s8 s4\f |
    s4.*2 |
    s8 s4\mf |
    s4. |
    s4.-\tweak Y-offset #0.5 \cresc |
    s4. |
    
    \barNumberCheck 137
    s4.\f |
    s8 s4\p |
    s4.\cresc |
    s4.*3 |
    s4.\f |
    s4. |
    
    \barNumberCheck 145
    s4.\p |
    s4. |
    s4.\cresc |
    s4.*2 |
    s4.-\tweak Y-offset #0.5 \mf |
    s4. |
    s16 s\> s8 s\! |
    
    \barNumberCheck 153
    s8 s4\p |
    s4.*7 |
    
    \barNumberCheck 161
    s4.*2 |
    s4.\cresc |
    s4.*5 |
    
    \barNumberCheck 169
    s4. |
    s4.\mf |
    s4.\cresc |
    s4.*4 |
    s4.-\tweak Y-offset #-1 \f |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 96
    s4.*72 |
    
    \barNumberCheck 73
    s4.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 88 s8 \tempo 4. = 80 s \tempo 4. = 72 s |
    
    \barNumberCheck 81
    \tempo 4. = 66 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 96
    s4.*7 |
    
    \barNumberCheck 89
    s4.*80 |
    
    \barNumberCheck 169
    s4.*6 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 88 s8 \tempo 4. = 80 s \tempo 4. = 72 s |
          \tempo 4. = 66 s4. |
        }
        {
          \tempo 4. = 84 s8 \tempo 4. = 72 s \tempo 4. = 63 s |
          \tempo 4. = 50 s8 \tempo 4. = 40 s4 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*10 \break
  s4.*11 \break
  s4.*10 \break
  s4.*9 \break
  s4.*10 \break
  s4.*10 \pageBreak
  
  % page 2
  s4.*11 \break
  s4.*10 \break
  s4.*10 \break
  \grace { s8 } s4.*9 \break
  s4.*9 \break
  s4.*9 \pageBreak
  
  % page 3
  s4.*9 \break
  s4.*9 \break
  s4.*10 \break
  s4.*10 \break
  s4.*10 \break
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
