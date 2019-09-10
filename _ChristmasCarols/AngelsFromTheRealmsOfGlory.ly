
%{
Lead Sheet template: chords, melody, lyric
===================



Angels From The Realms Of Glory

Traditional
Key of
Meter: 4/4

verse

A
D A Esus E A
A F#m7
B7
E

chorus

E A F#m7
D Bm7 Esus E A


verse 1

Angels from the realms of glory,
Wing your flight o’er all the earth;
Ye who sang creation's story
Now proclaim the Messiah's birth.

chorus

Come and worship, come and worship
Worship Christ, the newborn King.

verse 2

Shepherds, in the field abiding,
Watching over your flocks by night,
God with us is now residing;1
Yonder shines the infant light


verse 3

Sages, leave your contemplations,
Brighter visions beam afar;
Seek the great Desire of nations;
Ye have seen His natal star.


verse 4

Saints, before the altar bending,
Watching long in hope and fear;
Suddenly the Lord, descending,
In His temple shall appear.



verse 5

Sinners, wrung with true repentance,
Doomed for guilt to endless pains,
Justice now revokes the sentence,
Mercy calls you, break your chains



verse 6

Though an infant now we view Him,
He shall fill His Father's throne,
Gather all nations to Him;
Every knee shall then bow down


verse 7

Lord of Heaven, we adore Thee,
God the Father, God the Son,
God the Spirit, One in glory,
On the same eternal throne


verse 8

All creation, join in praising
God, the Father, Spirit, Son,
Evermore your voices raising
To the eternal Three in One



%}

treble = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 120
   g e c' g e'4. d8 c4 g \break
   a a g c g f e2      \break
   g4 e c' g e'4. d8 c4 b \break
   c b a b8 c b4 a g2  \break
                       }

treble_b = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 120
   g e c' g e'4. d8 c4 g \break
   a a g c g f e2      \break
   g4 e c' g e'4. d8 c4 b \break
   c b a b8 (c) b4 a g2  \break
                       }

chorus_treble = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 120
  d4. d8 b4 g e'4. d8 c4 a \break
  f' e d c c b c2
  \bar "|."   \pageBreak
   }

verse_a = \lyricmode { 
An- gels from the realms of glo- ry,
Wing your flight o’er all the earth;
Ye who sang cre- a- tion's sto- ry
Now pro- claim the Mes- si- ah's birth.
}

chorus = \lyricmode { 
Come and wor- ship, come and wor- ship
Wor- ship Christ, the new- born King.
                     }

verse_b = \lyricmode { 
Shep- herds, in the field a- bid- ing,
Watch- ing over your flocks by night,
God with us is now re- sid- ing;1
Yon- der shines His in- fant light
}

verse_c = \lyricmode { 
Sag- es, leave your con- tem- pla- tions,
Bright- er vi- sions beam a- far;
Seek the great De- sire of na- tions;
Ye have seen His na- tal star.
}

verse_d = \lyricmode { 
Saints, be- fore the a- ltar bend- ing,
Watch- ing long in hope and fear;
Sud- den- ly the Lord, de- scend- ing,
In His tem- ple shall ap- pear.
}

verse_e = \lyricmode { 
Sin- ners, wrung with true re- pen- tance,
Doomed for guilt to end- less pains,
Jus- tice now re- vokes the sen- tence,
Mer- cy calls you, break your chains
}

verse_f = \lyricmode { 
Though an in- fant now we view Him,
He shall fill His Fa- ther's throne,
Ga- ther all the na- tions to Him;
Eve- ry knee shall then bow down
}

verse_g = \lyricmode { 
Lord of Hea- ven, we a- dore Thee,
God the Fa- ther, God the Son,
God the Spi- rit, One in glo- ry,
On the same e- ter- nal throne
}

verse_h = \lyricmode { 
All cre- a- tion, join in prais- ing
God, the Fa- ther, Spi- rit, Son,
E- ver- more your voic- es rais- ing
To th'e- ter- nal Three in One
}


guitar = \chordmode {
c1 c f2 c4 a:m g2:7 c
c1 c2 a4:m e:7 a:m e:7 a2:m g4 d:7 g
}

guitar_chorus = \chordmode {
g1 c2:7 f d4:m c d:m a:m c g:7 c2}

\header{ title = "Angels From The Realms of Glory"}

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
    \new Voice = "one" { \treble_b }
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
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble_b }
    \addlyrics \verse_c
  >>
  \header{ piece = "Verse three"}
  \layout {indent = #0 }
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
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble_b }
    \addlyrics \verse_d
  >>
  \header{ piece = "Verse four"}
  \layout {indent = #0 }
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
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble_b }
    \addlyrics \verse_e
  >>
  \header{ piece = "Verse five"}
  \layout {indent = #0 }
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
}

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble_b }
    \addlyrics \verse_f
  >>
  \header{ piece = "Verse six"}
  \layout {indent = #0 }
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
}


\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble_b }
    \addlyrics \verse_g
  >>
  \header{ piece = "Verse seven"}
  \layout {indent = #0 }
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
}


\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble_b }
    \addlyrics \verse_h
  >>
  \header{ piece = "Verse eight"}
  \layout {indent = #0 }
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
}


%}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
%{


%}