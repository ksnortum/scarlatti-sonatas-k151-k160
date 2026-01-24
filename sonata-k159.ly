%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"
\include "initial-clef-engraver.ily"

#(expect-warning-times 2 "cyclic dependency")


\header { 
  title = "Sonata in C major"
  opus = "K.159"
  source = "https://ks15.imslp.org/files/imglnks/usimg/a/a6/IMSLP376339-PMLP310488-Sibley1802.22722_-_No._3_-_Sonata_in_C_major,_K._159.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1) (0 . 1))
                      ) \etc
slurShapeB = \shape #'((0 . -0.5) (2 . 2) (0 . 0) (0 . -4.5)) \etc

%
% Music
%

global = {
  \time 6/8
  \key c \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \partial 4 \addStaccato { 
      g''8 f |
      e8 e d  c c d |
    }
    e4->(\startTrillSpan d8)\stopTrillSpan \addStaccato {
      d\noBeam g f |
      e8 e d  c c d |
    }
    e4->(\startTrillSpan d8)\stopTrillSpan  d-.\noBeam g-. e-. |
    e4->(\startTrillSpan ^\trillSharp d8)\stopTrillSpan  r g-. c,-. |
    c4->(\startTrillSpan b8)\stopTrillSpan  r g'-. e-. |
    \acciaccatura { fs8 } e->( d) d-. \acciaccatura { e } d->( c) c-. |
    \acciaccatura { d8 } c->( b) b-.  r8 d'-. g,-. |
    
    \barNumberCheck 9
    g4->(\startTrillSpan fs8)\stopTrillSpan  r g-. e-. |
    e4->(\startTrillSpan ^\trillSharp d8)\stopTrillSpan  r d'-. g,-. |
    \acciaccatura { a8 } g->( fs) fs-. \acciaccatura { g } fs->( e) e-. |
    \acciaccatura { fs8 } e->( d) d-. \acciaccatura { e } d->( c) c-. |
    \addStaccato { \stemUp <g b>8 <a c> <b d>  <a c> <g b> <fs a> | }
    \stemNeutral <g b>4-> g'8-.  r <fs, a>-. c'-. |
    <g b>4-> g'8-.  r <fs, a>-. c'-. |
    \addStaccato { \stemUp <g b>8 <a c> <b d>  <a c> <g b> <fs a> | }
    
    \barNumberCheck 17
    \stemNeutral <g b>4-> g'8-.  r <fs, a>-. c'-. |
    <g b>4-> b'8-.->  r <fs, a>-. c'-. |
    <g b>4-> d''8-.->  r <fs,, a>-. c'-. |
    \addStaccato { 
      \stemUp <g b>8 <a c> <b d>  <a c> <g b> <fs a> |
      <b d>8 <a c> <g b>  <a c> <g b> <fs a> |
      <b d>8 <a c> <g b>  <a c> <g b> <fs a> |
    }
    <b d>8-. <a c>-. <g b>-.  a(\prall g-.) fs-. |
    g8-.^\aTempo d b-. \clef bass \stemNeutral g-. d-. b-. |
    
    \barNumberCheck 25
    r4 r8 r
  }
  \repeat volta 2 {
    \clef treble g'''8-. ef-. |
    \acciaccatura { f8 } ef->( d) d-. \acciaccatura { ef } d8->( c) c-. |
    \acciaccatura { d8 } c->( b) b-.  r g'-. ef-. |
    \acciaccatura { f8 } ef->( d) d-. \acciaccatura { ef } d8->( c) c-. |
    \acciaccatura { d8 } c->( b) b-.  r c'-. af-. |
    % acciaccatura is bf acording to an urtext, and measure 32
    \acciaccatura { bf8 } af->( g) g-. \acciaccatura { af } g->( f) f-. |
    \acciaccatura { g8 } f->( e) e-.  r c'-. af-. |
    \acciaccatura { bf8 } af->( g) g-. \acciaccatura { af } g->( f) f-. |
    
    \barNumberCheck 33
    \acciaccatura { g8 } f->( e) e-.  r g-. g-. |
    g8->( bf af)  r f-. f-. |
    fs8->( af g)  r ef-. ef-. |
    e!8->( g f)  r d-. d-. |
    <<
      { 
        s4. s8 g4~ |
        g4. f4.-> |
        g4.-> f4.-> |
        g4.-> f4.-> |
      }
      \\
      {  
        ef8^>^( g) ef^.  d^. g( d |
        c b! c)  \osp #'(0 . 1) c(-\insideSlur \prall b c) |
        d8( ef d)  \osp #'(0 . 1) c(-\insideSlur \prall b c) |
        d8( ef d)  \osp #'(0 . 1) c(-\insideSlur \prall b c) |
      }
    >> 
    
    \barNumberCheck 41
    \set subdivideBeams = ##t \omit TupletBracket
    d16->-\slurShapeB ( g \tuplet 3/2 8 { f ef d  c b a  \voiceOne g f ef
      d c \staffDown b  a g fs } |
    g4.->)\fermata \staffUp \oneVoice r8^\aTempo g''-. f-. |
    \addStaccato { e!8 e d  c c d | }
    e4->(\startTrillSpan d8)\stopTrillSpan \addStaccato {
      d\noBeam g f |
      e8 e d  c c d |
    }
    e4->(\startTrillSpan d8)\stopTrillSpan  d-.\noBeam c'-. a-. |
    a4->(\startTrillSpan g8)\stopTrillSpan  r c-. f,-. |
    f4->(\startTrillSpan e8)\stopTrillSpan  r c'-. a-. |
    
    \barNumberCheck 49
    \acciaccatura { b8 } a->( g) g-. \acciaccatura { a } g->( f) f-. |
    \acciaccatura { g8 } f->( e) e-. \acciaccatura { d } e->( d) d-. |
    c4( c'8) << { e,8( f) d-. } \\ { c4 b8 } >> |
    <c e>4-> c'8-.  r <b, d>-. f'-. |
    <c e>4-> c'8-.  r <b, d>-. f'-. |
    \addStaccato { <c e>8 <d f> <e g>  <d f> <c e> <b d> | }
    <c e>4-> c'8-.  r <b, d>-. f'-. |
    <c e>4-> e'8-.->  r <b, d>-. f'-. |
    
    \barNumberCheck 57
    <c e>4-> g''8-.->  r <b,, d>-. f'-. |
    \addStaccato { 
      <c e>8 <d f> <e g>  <d f> <c e> <b d> | 
      <e g>8 <d f> <c e>  <d f> <c e> <b d> |
      <e g>8 <d f> <c e>  <d f> <c e> <b d> |
    }
    <e g>8-. <d f>-. <c e>-.  d->(\prall c-.) b-. |
    \tag layout { c4.->\trill \fermata } \tag midi { c8~\trill c4 } r8
  }
}

leftHand = \relative {
  \global
  \clef treble
  \repeat volta 2 {
    \partial 4 \addStaccato {
      e''8 d |
      c8 c g  e e g |
    }
    c4->( g8) \addStaccato {
      g8\noBeam e' d |
      c8 c g  e e g |
    }
    % fourth beat, no accent
    c4->( g8)  g-. r c-. |
    b4 b8-. a4 a8-. |
    g4 g8-. c4 c8-. |
    b4 b8-. a4 a8-. |
    g4 g8-. \osp #'(1 . 1) e4_( c'8 |
    
    \barNumberCheck 9
    d,4 b'8 c,4 a'8 |
    b,4 g'8) e4-\slurShapeA _( c'8 |
    d,4 b'8 c,4 a'8 |
    b,4 g'8 a,4 fs'8) |
    \clef bass g,4-> b,8-. c4-> d8-. |
    g8-. d-. g,-. d4.-> |
    g'8-. d-. g,-. d4.-> |
    g'4-> b,8-. c4-> d8-. |
    
    \barNumberCheck 17
    g8-. d-. g,-. d4.-> |
    g'8-. d-. g,-. d4.-> |
    g'8-. d-. g,-. d4.-> |
    g'4-> b,8-. c4-> d8-. |
    b4-> e8-. c4-> d8-. |
    b4-> e8-. c4-> d8-. |
    b4-> e8-. c4-> d8-. |
    g,2.-> |
    
    \barNumberCheck 25
    g,4.-> r8
  }
  \repeat volta 2 {
    \clef treble r8 <g''' c>-. |
    <g b>4 q8-. <g af>4 <f af>8-. |
    g4 g8-. <g c>4 q8-. |
    <g b>4 q8-. <g af>4 <f af>8-. |
    g4 g8-. <f af c>4 q8 |
    <e g bf c>4 q8 <f bf df>4 q8 |
    <c g' c>4 q8 <f af c>4 q8 |
    <e g bf c>4 q8 <f bf df>4 q8 |
    
    \barNumberCheck 33
    <c g' c>4 q8 <e g c>4 q8 |
    <f af c>4 q8 <d f bf>4 q8 |
    <ef g bf>4 q8 <c ef af>4 q8 |
    <d f af>4 q8 <b! d g>4 q8 |
    <c ef g>4 q8 <bf d g>4 q8 |
    <af c g'>4 q8 <af c f>4 q8 |
    <g c d g>4-> q8 <af c f>4-> q8 |
    <g c d g>4-> q8 <af c f>4-> q8 |
    
    \barNumberCheck 41
    <g b d g>4 r8 \after 8 \clef bass r4 r8 |
    \voiceTwo <g,, g'>4.->\fermata \clef treble \oneVoice r8 e''''!-. d-. |
    \addStaccato { c8 c g  e e g | }
    c4->( g8) \addStaccato {
      g8\noBeam e' d |
      c8 c g  e e g |
    }
    c4->( g8)  g-. r <f a c> |
    <e g c>4 q8 <d f c'>4 <d f b>8 |
    <c g' c>4 q8 <f a c>4 q8 |
    
    \barNumberCheck 49
    <e g c>4 q8 <d f b>4 q8 |
    <c g' c>4 q8 <g' b>4 q8 |
    a8( g f)  g4 g,8-. |
    \clef bass c8-. g-. c,-. g4.-> |
    c'8-. g-. c,-. g4.-> |
    c'4-> e,8-. f4-> g8-. |
    c8-. g-. c,-. g4.-> |
    c'8-. g-. c,-. g4.-> |
    
    \barNumberCheck 57
    c'8-. g-. c,-. g4.-> |
    c'4-> e,8-. f4-> g8-. |
    e4-> a8-. f4-> g8-. |
    e4-> a8-. f4-> g8-. |
    e4-> <a, a'>8-. <f f'>4-> <g g'>8-. |
    <c, c'>4.->\fermata r8
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override TextSpanner.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 4 s4-\tweak Y-offset #0 \p |
    s2. |
    \tag layout { s4.\sf\> } \tag midi { s4.\mf\> } s8 s4\p |
    s2. |
    \tag layout { s4.\sf\> } \tag midi { s4.\mf\> } s8 s4\p |
    s4\> s8\! s4. |
    s4\> s8\! s4. |
    s8\> s4\! s8\> s4\! |
    s8\>s4\! s4. |
    
    \barNumberCheck 9
    s4\> s8\! s4. |
    s4\> s8\! s4.\cresc |
    s4\> s8\! s4\> s8\! |
    s4\> s8\! s4\> s8\! |
    s2.\f |
    s8 s4\cresc s4. |
    s2. |
    s2.\f |
    
    \barNumberCheck 17
    s8\p s\cresc s2 |
    s2. |
    s4.\f s8 s4\mf |
    s4\< s8\! s4\> s8\! |
    s2.\p\cresc |
    s2. |
    \makeSpanner \pocoRit s2\startTextSpan s8 s\stopTextSpan |
    s2.\f |
    
    \barNumberCheck 25
    s4. r8
  }
  \repeat volta 2 {
    s4\mf |
    s8\> s4\! s8\> s4\! |
    s8\> s4\! s4.\p |
    s8\> s4\! s8\> s4\! |
    s8\> s4\! s4.\mf |
    \override DynamicLineSpanner.Y-offset = #0.5 
    s8\> s4\! s8\> s4\! |
    s8\> s4\! s4.\p |
    s8\> s4\! s8\> s4\! |
    
    \barNumberCheck 33
    s8\> s4\! s4. |
    s4\> s8\! s4. |
    s4\> s8\! s4. |
    s4\> s8\! s4. |
    s2.\cresc |
    s2. |
    \makeSpanner \rinForzandoERall s2.-\alterBroken Y-offset #'(-1 0)
      \startTextSpan |
    s4. s4 s8\stopTextSpan |
    
    \barNumberCheck 41
    s4\f s8^\accelerando s4. |
    \override DynamicLineSpanner.Y-offset = #2
    s4. s8 s4\p |
    s2. |
    \tag layout { s4.\sf\> } \tag midi { s4.\mf\> } s8 s4\p |
    s2. |
    \override DynamicLineSpanner.Y-offset = #0.5
    \tag layout { s4.\sf\> } \tag midi { s4.\mf\> } s8 s4\p |
    s4\> s8\! s4. |
    s4\> s8\! s4.\cresc |
    
    \barNumberCheck 49
    s8\> s4\! s8\> s4\! |
    s8\> s4\! s8\> s4\! |
    s2.-\tweak Y-offset #-1 \f |
    s2.\p\cresc |
    s2. |
    s2.\f |
    s2.\p\cresc |
    s2. |
    
    \barNumberCheck 57
    \override DynamicLineSpanner.Y-offset = #-1
    s4.\f s8 s4\mf |
    s4\< s8\! s4\> s8\! |
    s2.\p\cresc |
    s2. |
    \makeSpanner \pocoStent s4.\startTextSpan s4 s8\stopTextSpan |
    s4.-\tweak Y-offset #0.5 \f s8
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Vivacissimo" 4. = 108
    \partial 4 s4 |
    s2.*16 |
    
    \barNumberCheck 17
    s2.*6 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 100 s4. \tempo 4. = 92 s |
    \tempo 4. = 108
    s2. |
    
    \barNumberCheck 25
    s4. s8
  } 
  \repeat volta 2 {
    s4 |
    s2.*7 |
    
    \barNumberCheck 33
    s2.*6 |
    s4. \tempo 4. = 100 s | % rall
    \tempo 4. = 92 s4. \tempo 4. = 84 s |
    
    \barNumberCheck 41
    s8 \tempo 4. = 88 s \tempo 4. = 92 s \tempo 4. = 96 s \tempo 4. = 100 s
      \tempo 4. = 104 s |
    \tempo 4. = 30 s4. \tempo 4. = 108 s4. |
    s2.*6 |
    
    \barNumberCheck 49
    s2.*8 |
    
    \barNumberCheck 57
    s2.*4 |
    \tag layout { s2. | s4. s8 }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 100 s4. \tempo 4. = 92 s |
          \tempo 4. = 84 s4. \tempo 4. = 108 s8
        }
        {
          \tempo 4. = 96 s4. \tempo 4. = 84 s |
          \tempo 4. = 50 s4. s8
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4 s2.*5 \break
  s2.*5 \break
  \grace { s8 } s2.*5 \break
  s2.*5 \break
  s2.*4 s4. s8 \break
  s4 s2.*4 \pageBreak
  
  % page 2
  \grace { s8 } s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*6 \break
  s2.*6 \break
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
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
