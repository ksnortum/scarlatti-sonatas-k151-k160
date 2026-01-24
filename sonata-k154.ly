%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24"
\include "globals.ily"

\header { 
  title = "Sonata in B♭ major"
  opus = "K.154"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/f/fa/IMSLP626960-PMLP476449-Sonata_K._154_(as_L._96).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.5) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0 . -1) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeE = \shape #'((0 . -0.25) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 0.25) (0 . 0) (0 . 0))
                      ) \etc

moveAccidentalA = \tweak Accidental.X-offset -1.5 \etc

%
% Music
%

global = {
  \time 2/2
  \key bf \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    r4 f''( bf-.) f-. |
    bf2 r4 f-. |
    g4-. f-. \grace { ef8( } \afterGrace 15/16 ef2)-\slurShapeA (\trill
      { d16 ef } |
    d2) r4 bf'8-\slurShapeB \( a |
    g8 f ef d \grace { ef8( } \afterGrace 15/16 ef2)\trill { d16 ef } |
    d4\) d'8( c  bf a g f |
    g4-.) f-. \grace { ef8( } \afterGrace 15/16 ef2)-\slurShapeA (\trill
      { d16 ef } |
    d2) r4 f-. |
    
    \barNumberCheck 9
    g8( f ef4) r bf'-. |
    a8( bf c4) r c,-. |
    d8( ef f4) r fs-. |
    g8( f! ef4) r bf'-. |
    bf8-\slurShapeC ( a c bf  a g f ef |
    d8 c bf4) r bf'-. |
    \osp #'(-0.5 . 0) e,4( bf'-.) r bf-. |
    \osp #'(-0.5 . 0) f4( bf-.) r bf-. |
    
    \barNumberCheck 17
    bf8( a g f  e d c bf) |
    bf4(\turn a) r c-. |
    cs4( d) r d-. |
    e4.\prall e8-. f4.\prall f8-. |
    g4.\prall g8-. a4.\mordent bf8-. |
    g4.\prall g8-. a4.\mordent bf8-. |
    g4.\prall g8-. a4.\mordent bf8-. |
    \tag layout { g2\prallprall } \tag midi { g\prall } r4
      \osp #'(-0.5 . 0) g( |
    
    \barNumberCheck 25
    c4-.) af2( f4) |
    \osp #'(-1 . -1) f4(^\trillNatural -\trillAbove \turn e)
      r bf'-\slurShapeD ( |
    df4-.) bf2( g4) |
    g4( af) r c-. |
    bf8( df g, bf  f4-.) e-.\prall |
    \appoggiatura { e8 } f2 r4 df'( |
    c4-.) af2( f4) |
    \osp #'(-1 . -1) \tag layout { f4(^\trillNatural -\trillAbove 
      \reverseturn } \tag midi { f\turn } e) r bf'-\slurShapeD ( |
    
    \barNumberCheck 33
    df4-.) bf2( g4) |
    g4( af) r c-. |
    bf8( df g, bf  f4-.) e-.\prall |
    f4.\prall f8-. g4.\prall g8-. |
    a4.\mordent bf8-. g4.\prall g8-. |
    a4.\mordent bf8-. g4.\prall g8-. |
    a8( c a g  f e d cs |
    d8 e f g) \osp #'(-1 . -0.5) g4.(\trill f16 g |
    
    \barNumberCheck 41
    a8 c a g  f e d cs |
    d8 d' bf g  f4-.) e-.\prall |
    \alternative {
      { f2 r | }
      { f2-> r | }
    }
  }
  \section
  \repeat volta 2 {
    r4 f( bf-.) f-. |
    bf2( af |
    g4.) g8-. f4.\prall f8-. |
    ef!4.\prall ef8-. d4.\prall d8-. |
    
    \barNumberCheck 49
    c4.\prall c8-. b4.\prall b8( |
    c8) c( d ef  d) d( ef f |
    ef8 d c4) r g'-. |
    fs8( a c,4-.) r c'-. |
    bf!8( a g4-.) r g-. |
    \tuplet 3/2 { g8( f e } g2) g4-. |
    \tupletOff \tuplet 3/2 { g8( f e } g2) g4-. |
    g8( a bf a  bf g f e) |
    
    \barNumberCheck 57
    d4.\prall ^\trillNatural d8-. e4.\prall e8-. |
    f4.\mordent ^\trillNatural g8-. e4.\prall e8-. |
    \tupletOn \tuplet 3/2 { f8( e d } f2) f4-. |
    \tupletOff \tuplet 3/2 { f8( e d } f2) f4-. |
    f8( g af g  af f ef! d) |
    c4.\prall c8-. d4.\prall d8-. |
    ef4.\mordent f8-. d4.\prall g8-. |
    ef8( d c bf!)  a!4.\prall a8-. |
    
    \barNumberCheck 65
    bf4.\prall bf8-. c4.\prall c8-. |
    d4.\mordent ef8-. c4.\prall c8-. |
    f8( d g f  ef d c bf |
    a8 bf c4-.) r \osp #'(-0.5 . 0) c( |
    f4-.) df2( bf4) |
    \tag layout { bf4(\reverseturn } \tag midi { bf(\turn } a) r
      \osp #'(-0.5 . 0) f'( |
    gf4-.) ef2( c4) |
    c4( df) r f-. |
    
    \barNumberCheck 73
    ef8( gf c, ef  bf4-.) a-.\prall |
    \appoggiatura { a8 } bf2 r4 bf'-. |
    \osp #'(-1 . 0) e,4( bf'-.) r bf-. |
    a8( c ef,2) c4-. |
    c4( df) r f-. |
    ef8( gf c, ef  bf4-.) a-.\prall |
    bf4.\prall bf8-. c4.\prall c8-. |
    d!4.\mordent ef8-. c4.\prall c8-. |
    
    \barNumberCheck 81
    d4.\mordent ef8-. c4.\prall c8-. |
    \osp #'(-0.5 . 0) f8( d g ef  d4-.) c-.\prall |
    bf'4.\mordent c8-. f,4.\prall f8-. |
    bf4.\mordent c8-. f,4.\prall f8-. |
    \osp #'(-0.5 . 0) f8( d g ef  d4-.) c-.\prall |
    \osp #'(-0.5 . 0) f8( d g ef  d4-.) c-.\prall |
    bf'8( bf, ef c  d4-.) c-.\prall |
    \alternative {
      { bf2-> r | }
      { bf2-> r | }
    }
  }
  \fine
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    bf,2 r |
    r4 bf'( d-.) bf-. |
    ef4-. d-. c( f,) |
    r4 bf( d-.) bf-. |
    ef4-. d-. c( f,) |
    r4 bf( d-.) bf-. |
    ef4-. d-. c( f,) |
    r4 bf( d-.) bf-. |
    
    \barNumberCheck 9
    \addStaccato {
      r4 ef, g ef |
      r4 f a f |
      r4 bf d bf |
      r4 ef, g ef |
    }
    \osp #'(0 . 2.5) f2( f,) |
    \addStaccato {
      r4 bf' d bf |
      r4 c e c |
      r4 d f d |
    }
    
    \barNumberCheck 17
    r4 \osp #'(2.5 . 0) c,( d e) |
    r4 f( a-.) f-. |
    \addStaccato {
      r4 bf d bf |
      r4 c a f |
      e4 c f bf |
      c4 e f bf, |
      c4 e, f bf,
    }
    c,2 r |
    
    \barNumberCheck 25
    r4 f''( df-.) bf-. |
    r4 g'( e-.) c-. |
    r4 g'( e-.) c-. |
    \addStaccato {
      r4 f, af f |
      bf4 df c c, |
    }
    f4-\slurShapeE ( c f,2) |
    r4 f''( df-.) bf-. |
    r4 g'( e-.) c-. |
    
    \barNumberCheck 33
    r4 g'( e-.) c-. |
    \addStaccato {
      r4 f, af f |
      bf4 df c c, |
      r4 f e c |
      f4 bf, c e |
      f4 bf, c e |
    }
    f2 r4 \osp #'(-0.5 . 0) a( |
    bf4-.) bf,-. c'-. c,-. |
    
    \barNumberCheck 41
    f2 r4 \osp #'(-0.5 . 0) a( 
    bf4-.) bf,-. c-. c,-. |
    \alternative {
      { f4-. f'8( ef!  d c bf a) | }
      { f2-> r | }
    }
  }
  \section
  \repeat volta 2 {
    bf2 r |
    r4 bf'( c d) |
    r4 ef!4-. d( b) |
    r4 c-. b( g) |
    
    \barNumberCheck 49
    r4 af( g f |
    ef4 f g g,) |
    \addStaccato {
      r4 c' ef c |
      r d fs d |
      r g, bf! g |
    }
    r4 << { cs( d2) } \\ { a4( bf-.) g-. } >> |
    r4 << { cs( d2) } \\ { a4( bf-.) g-. } >> |
    r4 <cs e>-. q-. q-. |
    
    \barNumberCheck 57
    r4 bf( g a |
    d4 g, a cs) |
    \override Parentheses.font-size = #-2
    r4 \parenLeft <d \parenthesize f> <d f>( \parenRight
      <c! \parenthesize e>) |
    r4 \parenLeft <\moveAccidentalA b \parenthesize d>-. <b d>( \parenRight
      <a \parenthesize c>) |
    r4 \parenLeft <g \parenthesize b>-. <g b>-. \parenRight
      <g \parenthesize b>-. |
    af4( ef f g |
    c4 f, g b |
    c4) ef,-\slurShapeF ( f ef |
    
    \barNumberCheck 65
    d4 bf' a f |
    bf4 ef, f ef |
    d2 ef |
    f4-.) c-. f,2 |
    r4 bf'( gf-.) ef-. |
    r4 f( a-.) f-. |
    r4 c'( a-.) f-. |
    \addStaccato {
      r4 bf df bf |
      
      \barNumberCheck 73
      ef,4 gf f f, |
    }
    r4 \osp #'(-0.5 . 0) bf'( df-.) bf-. |
    r4 g'-. e-. c-. |
    r4 c( a-.) f-. |
    \addStaccato {
      r4 bf df bf |
      ef,4 gf f f, |
    }
    bf4-. bf'( a f |
    bf4 ef, f a |
    
    \barNumberCheck 81
    bf4 ef, f ef |
    d4 ef f-.) f,-. |
    r4 bf'( a f |
    d4 bf' a f |
    d4 ef f-.) ef-. |
    \osp #'(-1 . 0) d4( ef f-.) ef-. |
    \osp #'(-1 . 0) d4( ef f-.) f,-. |
    \alternative {
      { bf4-. f'8( ef  d c bf a) | }
      { bf2-> r | }
    }
  }
  \fine
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1-\tweak Y-offset #-1 \f |
    s1 |
    s2 \tag layout { s } \tag midi { s\mf } |
    \tag layout { s2. } \tag midi { s\f } s4\p |
    s2 \grace { s8\mf\> } s4 s\! |
    s4\p s2.\f |
    s2 \tag layout { s } \tag midi { s\mf } |
    \tag layout { s2. } \tag midi { s\f } s4-\tweak Y-offset #0.5 \p |
    
    \barNumberCheck 9
    s1*2 |
    s1\cresc |
    s1 |
    s1\f |
    s1 |
    s4 s2.-\tweak Y-offset #0.5 \p |
    s1 |
    
    \barNumberCheck 17
    s1\mf |
    s4\> s2.-\tweak X-offset #1 \p |
    s1 |
    s1-\tweak Y-offset #0.5 \cresc |
    s1*2 |
    s1-\tweak Y-offset #0.5 \f |
    s2. s4\mf |
    
    \barNumberCheck 25
    s1*3 |
    s2. s4\f |
    s1 |
    s2.\> s4\mf |
    s1*2 |
    
    \barNumberCheck 33
    s1 |
    s2. s4\f |
    s1 |
    s4.\p s8\cresc s2 |
    s1*2 |
    s1-\tweak Y-offset #-1 \f |
    s2 \tag layout { s } \tag midi { s4.\mf s8\f } |
    
    \barNumberCheck 41
    s8 s4.\p\< s4. s8\! |
    s1\f |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  \repeat volta 2 {
    s1-\tweak Y-offset #-1 \f |
    s2.\> s4\! |
    s1\p |
    s1 |
    
    \barNumberCheck 49
    s1 |
    s2 s-\tweak Y-offset #-1 \< |
    s4-\tweak Y-offset #-1 \> s2.\! |
    s2. \tag layout { s4\sf } \tag midi { s8\f s\p } |
    s1 |
    s4 \tag layout { s\sf } \tag midi { s8\f s\p } s2 |
    s4 \tag layout { s\sf } \tag midi { s8\f s\p } s2 |
    s1 |
    
    \barNumberCheck 57
    s1\cresc |
    s2\mf\> s\p |
    s4 \tag layout { s\sf } \tag midi { s8\f s\p } s2 |
    s4 \tag layout { s\sf } \tag midi { s8\f s\p } s2 |
    s1 |
    s1-\tweak Y-offset #-1 \cresc |
    s2\mf\> s\p |
    s2 s-\tweak Y-offset #-1 \cresc |
    
    \barNumberCheck 65
    s1*2 |
    s1\f |
    s2.\> s4\mf |
    s1*3 |
    s2. s4-\tweak Y-offset #0 \f |
    
    \barNumberCheck 73
    s1 |
    s2. s4-\tweak Y-offset #0.5 \p |
    s1*2 |
    s2. s4\f |
    s1 |
    s4.\p s8\cresc s2 |
    s1 |
    
    \barNumberCheck 81
    s1 |
    s1\f |
    s4\p s2.\cresc |
    s1 |
    s1\f |
    s1 |
    s1-\tweak Y-offset #-1.5 ^\pocoRit |
    \alternative {
      { s4 s2.^\aTempo | }
      { s1 | }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 112
    s1*40 |
    
    \barNumberCheck 41
    s1*2 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  \repeat volta 2 {
    s1*4 |
    
    \barNumberCheck 49
    s1*32 |
    
    \barNumberCheck 81
    s1*6 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        { 
          s4 \tempo 2 = 104 s \tempo 2 = 96 s \tempo 2 = 88 s |
          \tempo 2 = 80 s4 \tempo 2 = 112 s2. | 
        }
        { 
          \tempo 2 = 100 s4 \tempo 2 = 88 s \tempo 2 = 76 s \tempo 2 = 66 s |
          \tempo 2 = 40 s1 | 
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*6 \break
  s1*7 \break
  s1*8 \break
  s1*8 \break
  \grace { s8 } s1*8 \break
  s1*7 \pageBreak
  
  % page 2
  s1*8 \break
  s1*7 \break
  s1*7 \break
  s1*8 \break
  s1*8 \break
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
