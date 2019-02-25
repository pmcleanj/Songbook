
%{
Lead Sheet template: chords, melody, lyric
===================




We Three Kings

Verse 1

 (Am) (E7) (Am)    (E7)    (Am)     (E7) (Am)  (E7)     (Am)  
   (C)    (G7)     (C)       (G7)   (C) (Dm)    (Am) (E7) (Am)
  (G7)  (C)             (Am)  (F) (C) 
 (Am) (F) (C)        (G7)   (F)  (C) (G7)   (C)      (F)       (C) 

We three kings of orient are
Bearing gifts, we traverse afar
Fields and Fountains, moor and mountains
following yonder star

chorus

(G) (G7)
(C)   (F)   (C)
(C)   (F)   (C)
(Am)   (F)   (C)   (F)
(C)   (F)   (C)
O – o, 
Star of wonder, star of night
Star with royal beauty bright
Westward leading, still proceeding
guide us to thy perfect light

Verse 2

Born a king on Bethlehem's plain
Gold I bring to crown hHim again
King forever, ceasing never
over us all to reign

Verse 3

Frankinsence to offer have I.
Ioncense owns a deity nigh.
Prayer and praising all men raising
Worship him: God most high.

Verse 4

Mhyrr is mine, it's bitter perfume
Breathes a life of gathering gloom
Sorrowing, sighing, bleeding,dying
sealed in a stone-cold tomb

Verse 5

Glorious now behold him arise
King and God and Sacrifice
Alleluia, alleluia
earth to the heavens replies.




%}

treble = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key g \major
  \time 3/4
  \tempo 4 = 110
  b'2 a4 g2 e4 fis g fis e2. \break
  b'2 a4 g2 e4 fis g fis e2. \break
  g2 g4 a2 a4 b2 b4 d (c) b \break
  a b a g2 fis4 e2.
                       }

chorus_treble = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key g \major
  \time 3/4
  \tempo 4 = 110
  fis2. (a) g2 g4 g2 d4 g2 e4 g2. \break
  g2 g4 g2 d4 g2 e4 g2. \break
  g2 g4 a2 b4 c2 b4 a2 b4 \break
  g2 g4 g2 d4 g2 e4 g2.
  \bar "|."   \pageBreak
   }

verse_a = \lyricmode { 
We three kings of or- i- ent are
Bear- ing gifts, we tra- verse a- far
Field and foun- tain, moor and moun- tains
fol- low- ing yon- der star
}

chorus = \lyricmode { 
O, 
Star of won- der, star of night
Star with roy- al beau- ty bright
West- ward lead- ing, still pro- ceed- ing
guide us to thy per- fect light
                     }

verse_b = \lyricmode { 
\override LyricText.color = #red
Born a king on Beth- le- hem's plain
Gold I bring to crown Him a- gain
King for- e- ver, ceas- ing ne- ver
o- ver us all to reign
}

verse_c = \lyricmode { 
\override LyricText.color = #blue
Frank- in- sence to of- fer have I.
In- cense owns a de- i- ty nigh.
Prayer and prais- ing all men rais- ing
Wor- ship him: God most high.
}

verse_d = \lyricmode { 
\override LyricText.color = #green
Mhyrr is mine, it's bit- ter per- fume
Breathes a life of ga- ther- ing gloom
Sorrow- ing, sigh- ing, bleed- ing, dy- ing
sealed in a stone- cold tomb
}

verse_e = \lyricmode { 
Glor- ious now be- hold him a- rise
King and God and Sa- - cri- fice
Al- le- lu- ia, al- le- lu- ia
earth to the heavens re- plies.
}


guitar = \chordmode {
 e2.:m e:m b:7 e:m
 e2.:m e:m b:7 e:m
 e2.:m d g g
 a2.:m e2:m b4:7 e2.:m}

guitar_chorus = \chordmode {
d2.:7 g2. g c g 
      g2. g c g 
      e2.:m d2 g4 c2 g4 d2.:7
      g2. g c g 
      }

\header{ title = "We Three Kings"}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \verse_a
  >>
  \header{ piece = "Verse one"}
  \layout {indent = #0 }
  \midi { }
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar_chorus
    }
    \new Voice = "one" { \chorus_treble }
    \addlyrics \chorus
  >>
  \header{ piece = "Chorus"}
  \layout {indent = #0 }
  \midi { }
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \verse_b
  >>
  \header{ piece = "Verse two"}
  \layout {indent = #0 }
  \midi { }
}
\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar_chorus
    }
    \new Voice = "one" { \chorus_treble }
    \addlyrics \chorus
  >>
  \header{ piece = "Chorus"}
  \layout {indent = #0 }
  \midi { }
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \verse_c
  >>
  \header{ piece = "Verse three"}
  \layout {indent = #0 }
  \midi { }
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar_chorus
    }
    \new Voice = "one" { \chorus_treble }
    \addlyrics \chorus
  >>
  \header{ piece = "Chorus"}
  \layout {indent = #0 }
  \midi { }
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \verse_d
  >>
  \header{ piece = "Verse four"}
  \layout {indent = #0 }
  \midi { }
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar_chorus
    }
    \new Voice = "one" { \chorus_treble }
    \addlyrics \chorus
  >>
  \header{ piece = "Chorus"}
  \layout {indent = #0 }
  \midi { }
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \verse_e
  >>
  \header{ piece = "Verse five"}
  \layout {indent = #0 }
  \midi { }
}
\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar_chorus
    }
    \new Voice = "one" { \chorus_treble }
    \addlyrics \chorus
  >>
  \header{ piece = "Chorus"}
  \layout {indent = #0 }
  \midi { }
}



%}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
%{


%}