%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title = "Sonata in D major"
  opus = "K.160"
  source = "https://ks15.imslp.org/files/imglnks/usimg/9/92/IMSLP626966-PMLP478373-Sonata_K._160_(as_L._15).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (1 . 3) (0 . -7) (0 . -2)) \etc
slurShapeB = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (2 . 3) (0 . -2))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . -3) (0 . -3) (0 . -3) (0 . -3))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1.5)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0.5) (3 . 0.5))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1.5))
                      ) \etc
slurShapeG = \shape #'((0 . -1) (0 . 1) (0 . 1) (0 . 1)) \etc
slurShapeH = \shape #'(
                        ((0 . -1) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2))
                      ) \etc
slurShapeI = \shape #'((0 . -1) (0 . 1.5) (0 . 1.5) (0 . 1.5)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 1) (0 . 7) (0 . -7)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1) (0 . -2))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . -1) (0 . -1.5) (0 . -1.5))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc

beamPositionsA = \once \override Beam.positions = #'(13 . 13)
beamPositionsB = \once \override Beam.positions = #'(12 . 12)

moveClefA = \once \override Staff.Clef.extra-offset = #'(0.2 . 0)

%
% Music
%

global = {
  \time 4/4
  \key d \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    d''8-.^"○" fs-. a4->~  a8 a,-. fs'4->~ |
    fs16 b,( g' fs)  fs( e d cs  d8-.) fs, a4->~ |
    a8 a,-. fs'4->~  fs16 b,( g' fs)  fs^( e d cs |
    d16 a fs a) r4  a''8-. \acciaccatura { g } fs16( e  d8) c-. |
    as8->( b4.)  e8( cs!16 b  a8) g-. |
    es8->( fs4.)  a'8-. \acciaccatura { g } fs16( e!  d8) c-. |
    as8->( b4.)  e8( cs!16 b  a8) g-. |
    es8->( fs4.)  fs'16( d a fs) \staffDown \stemUp \beamPositionsA d8
      \staffUp g16( e) |
    
    \barNumberCheck 9
    \stemDown fs'16( d a fs) \staffDown \stemUp \beamPositionsB d8 \staffUp
      g16( e)  \stemDown fs'16( d a fs) \staffDown \stemUp \beamPositionsB
      d8 \staffUp g16( e |
    \stemNeutral <d fs>4.) d''8-.  cs16( a g e  cs a g' e |
    <d fs>4.) d'8-.  cs16( a g e  cs a g' e |
    <d fs>4) r  d'16( b gs d  b gs b gs' |
    a4) e,16 a cs a  r fs'-\slurShapeB ( d'  cs b a gs a |
    gs16 a b d,  cs a' gs b,  a fs' e gs,  fs d' cs e, |
    d16 b' a cs,  gs' b, fs' a,  gs e' ds fs,  \staffDown e8-.) \staffUp e'-. |
    R1\fermata |
    
    \barNumberCheck 17
    e'8( c16 b  a8) g!( \voiceOne f8) f'4( e8 |
    d8 c' b a)  \after 16 ^\> a4.( gs8)\! |
    \oneVoice r2\fermata e8( c16 b  a8) g!( |
    \voiceOne f8) f'4( e8  d c' b a) |
    \after 16 ^\> a4.( gs8)\! \oneVoice d'16-\slurShapeD ( b gs d!  b gs e d' |
    cs4) r  d'16-\slurShapeE ( b gs d  b gs e d' |
    cs4) r  r16 cs'( a e  cs a cs e |
    fs16 a fs d  b gs b d  \voiceTwo cs e a) a,  a' b^( gs d) |
    
    \barNumberCheck 25
    \oneVoice r16 d'( cs b  a gs fs e  es fs cs d \voiceOne r8 \oneVoice
      es,16 fs |
    cs16 d e! fs  \stemUp gs d' cs b  a! b32 a gs a b16)
      \tag layout { b8.(\prallprall } \tag midi { b(\prall } a16) |
    r16 \stemNeutral d'( cs b  a gs fs e  es fs cs d \voiceOne r8 \oneVoice
      es,16 fs |
    cs16 d e! fs  \stemUp gs d' cs b  a! b32 a gs a b16)
      \tag layout { b8.(\prallprall } \tag midi { b(\prall } a16) |
    a16( e cs a  cs a' b, gs')  cs( a e cs  e cs' b d,) |
    \stemDown e'16( cs a e  a e' d b)  a'( e cs a  cs a' b, gs') |
    cs( a e cs  e cs' b d,)  a'( e cs a  cs a' b, gs' |
    cs,16 a' b, gs'  cs, a' b, gs') \appoggiatura { gs16^> } a4 r |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    \stemNeutral \osp #'(-0.5 . 2) e8( \acciaccatura { d } cs16 b
      a8 fs g!4. e8) |
    e'16( cs as fs  e' d) d( cs  d b fs d  d' cs) cs( b |
    cs16 as g e  cs' b) b( as  b fs d b) \voiceOne b'4( |
    as8 b as b  as b cs d) |
    \oneVoice \tag layout { cs4\prallprall } \tag midi { cs\prall } r\fermata
      fs8( \acciaccatura { e } d16 cs  b8 a! |
    g4) \voiceOne g'4(~  g8 fs16 e  d8 cs) |
    \osp #'(0 . -2) d'8( b16 a \oneVoice gs8 fs)  b16( gs es cs  b' a) a( gs |
    a16 fs cs a  a' gs) gs( fs  gs es d b  gs' fs) fs( es |
    
    \barNumberCheck 41
    \voiceOne fs4.) fs8(  es fs es fs |
    es8 fs gs a)  \oneVoice \tag layout { gs4\prallprall }
      \tag midi { gs\prall } r\fermata |
    gs8( a16 b  a gs fs es  fs4) r |
    r8 gs-.  gs16( a32 b a16 gs  fs4) r |
    r8 gs-.  gs16( a32 b a16 gs  fs4) r |
    r8 fs-.  fs16( g!32 a g16 fs  e4) r |
    r8 fs-.  fs16( g32 a g16 fs  e4) r |
    r8 e-.  e16( fs32 g fs16 e  d4) r |
    
    \barNumberCheck 49
    r8 e-.  e16( fs32 g fs16 e  d) a'( g fs  e d cs d) |
    \tag layout { a4\prallprall } \tag midi { a\prall } r r16 cs'( a e
      cs a e cs) |
    a''4 r r16 cs-\slurShapeJ ( a e  cs a' e cs |
    a16 e' cs a  e cs r8 \staffDown \hideNoteHead a,4) s |
    \staffUp a'''8( \acciaccatura { g } f16 e  d8 c \voiceOne bf-.) bf'4( a8~ |
    a8 g4 f8~  f4) ds8->( e) |
    \oneVoice a8( \acciaccatura { g! } f16 e  d8 c \voiceOne bf-.) bf'4( a8~ |
    a8 g4 f8~  f4) ds8->( e) |
    
    \barNumberCheck 57
    \oneVoice r16 cs'16( a g!  e cs a g'  fs!4) r8 d'-. |
    cs16( a e cs  a cs e g  fs4) r8 d'-. |
    cs16-\slurShapeM ( a g e  cs a g' e  fs a cs, e  d fs a, cs |
    b16) b'( a g  fs e d e  fs, a d d,  e) e'( cs g) |
    r16 g'( fs e  d cs b a  as b fs g \voiceOne r8 \oneVoice as,16 b |
    g16 a! b cs  d g fs e  d e32 d cs d e16)  \tag layout { e8.(\prallprall }
      \tag midi { e(\prall } d16) |
    r16 g'( fs e  d cs b a  as b fs g \voiceOne r8 \oneVoice as,16 b |
    g16 a! b cs  d g fs e  d e32 d cs d e16)  e8.(\trill d32 e |
    
    \barNumberCheck 65
    fs16)( d a d  fs a, g e')  fs16( d fs a  d fs, e cs') |
    fs16( d a fs  a fs' e g,)  a'( fs d a  d a' g e) |
    d'16( a fs d  fs d' e, cs'  fs, d' e, cs'  fs, d' e, cs' |
    \override Parentheses.font-size = #-2
    <\parenthesize d, d'>4) r r2 |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*16 |
    
    \barNumberCheck 17
    s2 \voiceFour r4 gs'8( a) |
    d4.( c8)  b8( ds e4) |
    s1 |
    r4 gs,8( a)  d4.( c8) |
    b8( ds e4) s2 |
    s1*2 |
    s2 s8 \voiceOne a8->~ \hideNoteHead a16 s8. |
    
    \barNumberCheck 25
    s2. \voiceFour as,16_\ms b s8 |
    s1 |
    s2. as16 b s8 |
    s1*5 |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    s1*2 |
    s2. b16( es, fs es |
    fs16 es fs es  fs es fs es  fs es fs es  fs es fs es) |
    s1 |
    s4 as8 b cs4 r |
    d4 s2. |
    s1 |
    
    \barNumberCheck 41
    a16( bs cs bs  cs bs cs bs  cs bs cs bs  cs bs cs bs |
    cs bs cs bs  cs bs cs bs) s2 |
    s1*6 |
    
    \barNumberCheck 49
    s1*3 |
    s2 \oneVoice r\fermata |
    s2 \voiceFour r4 cs8-\slurShapeK ( d |
    bf4 a)  gs8->( a) r4 |
    s2 r4 cs8( d |
    bf4 a)  gs8->( a) r4 |
    
    \barNumberCheck 57
    s1*4 |
    s2. ds,16_\ms e s8 |
    s1 |
    s2. ds16 e s8 |
    s1 |
    
    \barNumberCheck 65
    s1*4 |
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s1*16 |
    
    \barNumberCheck 17
    s1 |
    \voiceThree d'4( e) s2 |
    s1 |
    s2 d4( e) |
    s1*4 |
    
    \barNumberCheck 25
    s1*8 |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    s1*2 |
    s2 <b d>8-. s4. |
    s1*2 |
    s4 e s2 |
    s1*2 |
    
    \barNumberCheck 41
    s1*8 |
    
    \barNumberCheck 49
    s1*5 |
    g4 s2. |
    s1 |
    g4 s2. |
    
    \barNumberCheck 57
    s1*8 |
    
    \barNumberCheck 65
    s1*4 |
  }
}

leftHandLower = \relative {
  \clef treble % With an initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    d''4 r16 e( cs a  d4) r16 a( fs d |
    g4 a d,)  r16 \clef bass e( cs a |
    d4) r16 a( fs d  g4 a |
    d,4) d16( a fs a  d,4) r |
    g''8( e16 d  cs!8) b-.  a!4 r |
    d8( a16 g  fs8) e!-.  d4 r |
    g'8( e16 d  cs!8) b-.  a!4 r |
    d8( a16 g  fs8) e!-.  d4-> d'16( a b cs) |
    
    \barNumberCheck 9
    d,4-> d'16( a b cs)  d,4-> d'16( a b cs) |
    d,,16( fs a d  fs a d fs)  a,,4-> r |
    d,16( fs a d  fs a d fs)  a,,4-> r |
    d,16( fs a d  fs a d fs)  e,,4-> r |
    cs'16-\slurShapeA ( e a cs  s8. \staffUp \hideNoteHead a'16)
      \staffDown d,,4-> r |
    e,4 r e r |
    e4 r e \voiceTwo e |
    \oneVoice R1\fermata |
    
    \barNumberCheck 17
    r4 e''4_(~  e8 d4 c8 |
    \voiceTwo b8 a gs a  e4 e') |
    \oneVoice r2\fermata r4 e-\slurShapeC _(~ |
    e8 d4 c8 \voiceTwo b a gs a |
    \oneVoice e4 e') r2 |
    \osp #'(-2 . 0) a,,16( cs e a \clef treble cs e a cs) \clef bass e,,,4 r |
    \osp #'(-2 . 0) a16( cs e a \clef treble cs e a cs) \clef bass cs,,4 r |
    d4 r e( d |
    
    \barNumberCheck 25
    cs4 a' d,4) s8 r |
    r4 <d b'>( <e cs'> <d b'> |
    <cs a'>4) r d s8 r |
    r4 \osp #'(0 . 2.5) <d b'>( e e,) |
    a4.-> <e e'>8-. a4.-> <e e'>8-. |
    a4.-> <e e'>8-. a4.-> <e e'>8-. |
    a4.-> <e e'>8-. a4.-> <e e'>8-. |
    <a a'>8-. <e e'>-. <a a'>8-.[ <e e'>-.]  <a a'>4-> r |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    r2 e''8( cs16 b as8 g |
    <fs e'>4) r <fs b d> r |
    <fs cs' e>4 r \voiceTwo fs4. fs8 |
    \oneVoice <fs cs'>8( <fs d'> <fs cs'> <fs d'>
      <fs cs'> <fs d'> <fs cs'> <fs b>) |
    fs,4 r\fermata r \osp #'(-2.5 . 0) fs''_(~ |
    fs8 e16 d \voiceTwo cs8 b \oneVoice <as e'>4 <fs e'>) |
    \clef treble \osp #'(2 . 0) <b fs'>4( b') <cs, gs'> r |
    <cs fs a>4 r <cs gs' b> r |
    
    \barNumberCheck 41
    <cs fs>4. <cs a'>8(  <cs gs'> <cs a'> <cs gs'> <cs a'> |
    <cs gs'>8 <cs a'> <cs gs'> <cs fs>) \clef bass cs,4 r\fermata |
    r2 \clef treble a''16( cs fs, a  d, fs b, d |
    \moveClefA \clef bass gs,16 b es, gs cs,4)  \clef treble
      a''16-\slurShapeF ( cs fs, a  d, fs b, d |
    \moveClefA \clef bass gs,16 b es, gs cs,4)  \clef treble
      a''16( cs fs, a  c, e a, c |
    \moveClefA \clef bass fs,16 a ds, fs b,4)  g''16-\slurShapeG ( b e, g
      c, e a, c |
    fs,16 a ds, fs b,4)  g''16-\slurShapeH ( b e, g  b, e g, b |
    e,16 g cs, e a,4)  fs''16-\slurShapeI ( a d, fs  b, d g, b |
    
    \barNumberCheck 49
    e,16 g cs, e  a,8) g( fs4 g) |
    \osp #'(-2 . 0) a16( cs e a \clef treble cs e a cs) \moveClefA \clef bass
      a,,4 r |
    \osp #'(-2 . 0) a16( cs e a \clef treble cs e a cs) \clef bass a,,4 r |
    r4 r8 a'16 e  a,4 r\fermata |
    r4 a''4-\slurShapeL _(~  a8 g4 <f a>8 |
    \voiceTwo e8 d cs! d \oneVoice a4) r |
    r4 \osp #'(-0.5 . -1) a'4_(~  a8 g4 <f a>8 |
    \voiceTwo e8 d cs! d \oneVoice a4) r |
    
    \barNumberCheck 57
    a,4 r  d,16( fs a d  fs a d fs) |
    a,,4 r  d,16( fs a d  fs a d fs) |
    a,,4 r d( fs |
    g4) g,( a' g |
    fs4) r g s8 r8 |
    r4 g( a g |
    fs4) r g s8 r |
    r4 g( a g) |
    
    \barNumberCheck 65
    \override Parentheses.font-size = #-2
    <d, \parenthesize d'>4.-> a'8-. <d, d'>4.-> a'8-. |
    <d, d'>4.-> a'8-. <d, d'>4.-> a'8-. |
    <d, d'>4.-> a'8-. <d, d'>-. a'-. <d, d'>-.[ a'-.] |
    <d, d'>4-> r r2 |
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
  % TODO remove
  % \override TextScript.Y-offset = #-0.5
  % \override Hairpin.after-line-breaking = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s2 s8 s4.\mf |
    s1 |
    s2-\tweak Y-offset #-1 \f s8\sf s4.\p |
    s2 s8\sf s4.\p |
    s2 s8\sf s4.\p |
    s2 s8\sf s4.\p |
    s2 s\cresc |
    
    \barNumberCheck 9
    s1 |
    s1\f |
    s1*6 |
    
    \barNumberCheck 17
    s1\mf |
    s1 |
    s2 s\p |
    s1 |
    s2 s-\tweak Y-offset #-5.5 \f |
    s1*3 |
    
    \barNumberCheck 25
    s1\f |
    s1 |
    s16 s2...\p |
    s1 |
    s1\f |
    s1 |
    s2 s-\tweak extra-offset #'(0 . -0.5) \cresc |
    s2 s-\tweak Y-offset #0 \ff |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    s1\f |
    s1-\tweak Y-offset #1 \p |
    s1*2 |
    s2-\tweak Y-offset #-2 \mf s-\tweak extra-offset #'(0 . -1) \f |
    s1 |
    s2 s\p |
    s1 |
    
    \barNumberCheck 41
    s1 |
    s2 s\mf |
    s1\f |
    s1*5 |
    
    \barNumberCheck 49
    s1*4 |
    s1-\tweak Y-offset #-5.5 \mf |
    s1 |
    s1-\tweak Y-offset #-6 \p |
    s1 |
    
    \barNumberCheck 57
    s1\f |
    s1*3 |
    s1\f |
    s1*2 |
    s2. s8..\< s32\! |
    
    \barNumberCheck 65
    s2\mf s\cresc |
    s1 |
    s16\f s2...\cresc |
    s1\ff |
  }
}

pedal = {
  \repeat volta 2 {
    s1*7 |
    s2 s4-\tweak Y-offset #-1 \sd s\su |
    
    \barNumberCheck 9
    s4\sd s\su s\sd s\su |
    s2-\tweak Y-offset #-1 \sd s\su |
    s2-\tweak Y-offset #-1 \sd s\su |
    s2\sd s\su |
    s2\sd s-\tweak Y-offset #1 \su |
    s1*3 |
    
    \barNumberCheck 17
    s1*5 |
    s2-\tweak Y-offset #-1 \sd s\su |
    s2-\tweak Y-offset #-2 \sd s\su |
    s1 |
    
    \barNumberCheck 25
    s1 |
    s2. s4\sd |
    s1\su |
    s1*5 |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    s1*16 |
    
    \barNumberCheck 49
    s1 |
    s2\sd s\su |
    s1\sd |
    s2 s\su |
    s1*4 |
    
    \barNumberCheck 57
    s2 s-\tweak Y-offset #-1 \sd |
    s2\su s-\tweak Y-offset #-1 \sd |
    s1\su |
    s1*5 |
    
    \barNumberCheck 65
    s1*4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 126
    s1*8 |
    
    \barNumberCheck 9
    s1*6 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 4 = 112 s \tempo 4 = 104 s \tempo 4 = 96 s |
    s1 |
    
    \barNumberCheck 17
    \tempo 4 = 126
    s1 |
    s2 \tempo 4 = 112 s4 \tempo 4 = 104 s |
    s2 \tempo 4 = 126 s |
    s1*5 |
    
    \barNumberCheck 25
    s1*7 |
    \tempo 4 = 112 s4 \tempo 4 = 104 s \tempo 4 = 96 s2 |
  }
  \repeat volta 2 {
    \barNumberCheck 33
    \tempo 4 = 126
    s1*3 |
    s2 \tempo 4 = 112 s4 \tempo 4 = 104 s |
    \tempo 4 = 96 s4 s \tempo 4 = 126 s2 |
    s1*3 |
    
    \barNumberCheck 41
    s1 |
    \tempo 4 = 112 s4 \tempo 4 = 104 s \tempo 4 = 96 s2 |
    \tempo 4 = 126
    s1*6 |
    
    \barNumberCheck 49
    s1*3 |
    \tempo 4 = 112 s4 \tempo 4 = 104 s \tempo 4 = 96 s2 |
    \tempo 4 = 126
    s1*4 |
    
    \barNumberCheck 57
    s1*8 |
    
    \barNumberCheck 65
    s1*2 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s2 \tempo 4 = 112 s4 \tempo 4 = 104 s |
          \tempo 4 = 96 s1 |
        }
        {
          s4 \tempo 4 = 108 s \tempo 4 = 96 s \tempo 4 = 84 s |
          \tempo 4 = 60 s4 \tempo 4 = 126 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*2 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*2 \break
  s1*3 \pageBreak
  
  % page 2
  s1*3 \break
  s1*3 \break
  s1*2 \break
  s1*2 \break
  s1*3 \break
  s1*3 \pageBreak
  
  % page 3
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \pageBreak
  
  % page 4
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
  s1*3 \break
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
    \new Staff = "lower" \with { \clef bass } \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists #initial-clef-change-engraver
    }
  }
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
