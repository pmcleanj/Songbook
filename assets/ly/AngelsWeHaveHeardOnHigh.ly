
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.



%{
Lead Sheet template: chords, melody, lyric
===================




Angels We Have Heard on High

French carol. Public domain.

Meter: 4/4

G              |   
G               D    -   G
G                 |
G             D   -  G


chorus

G - E  Am - D   G - C   D
[G  D  G  C]  G  -  D
G - E  Am - D   G - C   D 
[G  D  G  C]  G - D    G    |


rann 1

Angels we have heard on high
Sweetly singing o'er the plains
And the mountains in reply
Echoing their joyous strains.

chorus

Glo____________________-or-ia 
in  ex-celsis De____o
Glo____________________-or-ia 
in  ex-celsis De__o

rann 2

Shepherds, why this jubilee?
Why your joyful strains prolong?
Say what may the tidings be
Which inspire your heav'nly song?

rann 3

Come to Bethlehem, and see
Him whose birth the angels sing
Come, adore on bended knee
Christ the Lord, the newborn King

rann 4

See within a manger laid
Jesus, Lord of heav'n and earth!
Mary, Joseph, lend your aid
With us sing our Savior's birth.

%}
%=====================================================





triobail = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key f \major
  \time 4/4
  \tempo 4 = 130
  a4 a a c c4. bes8 a4 r \break
   a g a c a4. g8 f4 r    \break
   a a a c c4. bes8 f4 r \break
   a g a c a4. g8 f4 r \break
   }

triobailSeist =
\relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key f \major
  \time 4/4
  \tempo 4 = 130
    c2 (d8 c bes a bes2 c8 bes a g a2 bes8 a g f g4.) c,8 c4 r \break
  f g  a bes a2 g4. r8 \break
  c2 (d8 c bes a bes2 c8 bes a g a2 bes8 a g f g4.) c,8 c4 r \break
  f g  a bes a2 (g4. f8) f1
  \bar "|."   \pageBreak
   }
alto = \relative c'{
	f4 f4 f4 f4 f4. e8 f2 f4 f4 f4 f4 e4 e4 c2
	f4 e4 f4 f4 e4 e4 f2 f4 f4 f4 f4 f4 e4 c2 
}

altoSeist = \relative c' {
	f4 (a8 g8 f2 f4 g8 f8 e2 e4 f8 e8 d2 d4.) c8 c4 r \break
  	c c c d c (f4) f4 (e4) \break
	f4 (a8 g8 f2 f4 g8 f8 e2 e4 f8 e8 d2 d4.) c8 c4 r \break
  	c c c d c (f4) f4 (e4)  c1 \break
}

dos = \relative c' {
	c2 c4 a4 bes2 c c1 c4 bes a2 f4 c' d8 c bes a bes4 c c2 c4 d c a c bes a2 
}

dosSeist = \relative c' {
	a2 bes d c c bes g4 f e2 f4 e f f f a c4. bes8
	a2 bes d c c bes g4 f e2 f4 e f f f a c4. bes8 a1
}

beus = \relative c {
	f1 g4 e4 f2 f4 e4 f4 a4 c,2 f2
	f4 c' d8 c bes a g4 c,4 f2 f4 bes4 f4 f4 c'4 c,4 f2	
}

beusSeist = \relative c {
	f2 bes,4 d4 g2 c,4 e4 f2 bes,4 d4 e4 d4 c4 bes4 a4 g4 f4 bes4 c2 c2 
	f2 bes,4 d4 g2 c,4 e4 f2 bes,4 d4 e4 d4 c4 bes4 a4 g4 f4 bes4 c2 c2 f1
	
}

Ranna = \lyricmode { 
An- gels we have heard on high
Sweet- ly sing- ing o'er the plains
And the moun- tains in re- ply
E- cho- ing their joy- ous strains.
}

seist = \lyricmode { 
Glo- or- ia 
in  ex- cel- sis De- o
Glo- or- ia 
in  ex- cel- sis De- - o
                     }

Rannb = \lyricmode { 
Shep- herds, why this ju- bi- lee?
Why your joy- ful strains pro- long?
What the glad- some ti- dings be
Which in- spire your hea- v'nly song?
}

Rannc = \lyricmode { 
Come to Beth- le- hem, and see
Him whose birth the an- gels sing
Come, a- dore on bend- ed knee
Christ the Lord, the new- born King.
}

Rannd = \lyricmode { 
See with- in a man- ger laid
Je- sus, Lord of heav'n and earth!
Ma- ry, Jo- seph, lend your aid
With us sing our Sa- viour's birth.
}
giotar = \chordmode {
f1 g4:m7 c:7 f2
f1 c2:7 f2
f4 a:m d:m f c2:7 f2
f4 bes f2 f4 c:7 f2
}

giotarSeist = \chordmode {
f2 d:m g:m c:7 f bes c1:7
f4 c:7 f bes f2 c:7
f2 d:m g:m c:7 f bes c1:7
f4 c:7 f bes f2 c:7 f1
}                  
%=====================================================


\header{ title = "Angels We Have Heard On High"}


\score {  
		\new ChoirStaff <<  
	    	\new ChordNames {
   				\set chordChanges = ##t
 				\giotar \giotarSeist
    		}
		\new Staff << 
		\key f \major
		\time 4/4 \tempo 4 = 120
		\clef "treble"
		\new Voice = "s" { \voiceOne
            \override TextScript.outside-staff-priority = #1
			\mark "Rann" \triobail \mark "Seist" \triobailSeist
		}
			\new Voice = "a" { \voiceTwo 
				\alto \altoSeist
            }
        \addlyrics { \Ranna \seist }
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
%		\addlyrics { \Rannd  }
		>>
		\new Staff <<  
			\key f \major
			\clef "bass"
			\new Voice = "t" { \voiceThree 
				\dos \dosSeist
            }
			\new Voice = "b" { \voiceFour 
				\beus \beusSeist
            }
		>> 
	>>   
   \layout { 
      indent = #0 
      \override Score.BarNumber.break-visibility = ##(#f #f #f) 
      }
   \midi {\context {\Score
      midiChannelMapping = #'harp } }
   } 




%{
         \new Voice = "a"  { \voiceTwo
            \repeat unfold \aireamh { 
                 \alto \altoSeist
                 }  
            }

       >> 

      \new Staff <<  
         \key bes \major
         \clef "bass"
         \new Voice = "t" { \voiceThree 
            \repeat unfold \aireamh { 
                \tenor \tenorSeist 
                } 
            }
         \new Voice = "b"  { \voiceFour
            \repeat unfold \aireamh { 
                 \béas \béasSeist
                 }
            }
         >>   




%}

