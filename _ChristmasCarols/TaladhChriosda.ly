
%{
Lead Sheet template: chords, melody, lyric
===================



X: 1
T: Taladh Chriosd
R: waltz
M: 3/4
L: 1/8
K: Dmix
D4E2|F4G2|A4G2|D6|F3ED2|E4A2|G4A2|C6|
D4E2|F4G2|A4G2|D6|D3CA,2|C4E2|D6|D6|

X: 2
T: Taladh Chriosd
R: waltz
M: 3/4
L: 1/8
K: Dmix
d4 e2|f4 g2|a4 g2|d6|
|1f4 d2|e4 a2|g4 d2|c6:|2d4 A2|c4 d2|e4 d2|d6|
|:B6|A4 d2|G4 F2|E6|B,4 ^C2|D4 ^C2|B,4 A,2|A,6:|

Taladh Chriosda - another version:

X: 1
T: Taladh Chriosda
M: 3/4
L: 1/4
K: Dmix
D2E|A3|G2A|D3|F2D|E2A|G2A|C3|
D2E|A3|G2A|D3|DCG|E2D|D3-|D3|]
# Posted by DonaldK 6 years ago. 




[Rann 1]
Mo ghaol, mo ghràdh is m’ eudail Thu!
M’ ionntas ùr is m’ èibhneas Thu!
Mo mhacan àlainn, ceutach Thu!
Chan fhiù mi fhèin a bhith ad dhàil.

[Sèist]
A-le-lùia
A-le-lùia
A-le-lùia
A-le-lùia.

[Rann 2]
Ged as Rìgh na Glòrach Thu,
Dhiùlt iad an taigh-òsda dhut,
Ach chualas ainglean sòlasach
Toirt glòir don Tì as àird’.

[Sèist]

[Rann 3]
Mo ghaol an t-sùil a sheallas tlath!
Mo ghaol an chridhe tha liont’ le gràdh!
Ged as leanabh Thu gun chàil,
Is lìonmhor buaidh tha ort a’ fàs.

[Sèist]






 My dear, my love, my joy are You!
My wonder and happiness are You!
My handsome, goodly young son are You!
I am unworthy to be near thee. 	¢] Halei-leuyah
Halei-leuyah
Halei-leuyah
Halei-leuyah.
2] Though You are the King of Glory,
They refused you at the inn,
But joyful angels are heard
Glorifying the Highest House.
	3] My love whose eye has tender gaze!
My love whose heart is full of love!
Though you are a babe without fault,
You grow in victory.



%}

treble = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key d \major
  \time 3/4
  \partial 4 
                       }

chorus_treble = \relative c' {
  \clef treble
  \key d \major
  \time 3/4
  \partial 4 

  \bar "|."   \pageBreak
   }

verse_a = \lyricmode { 

}

chorus = \lyricmode { 
                     }

verse_b = \lyricmode { 

}

verse_c = \lyricmode { 

}

verse_d = \lyricmode { 
}

verse_e = \lyricmode { 
}

verse_f = \lyricmode { 
}


guitar = \chordmode {

}

chorus_guitar = \chordmode {

}

\header{ title = "Carol Template"}

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

\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \verse_f
  >>
  \header{ piece = "Verse six"}
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