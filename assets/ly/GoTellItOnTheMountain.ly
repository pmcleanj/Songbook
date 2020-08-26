
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================





The Huron Carol

St. Jean de Brébeuf (Huron words), J. Edgar Middleton ("translation")

Rann 1

E A B C D C B A G 
A A B G A
E A B C D C B A G 
A C B G A 
A E E B C D C B B
C B A A B A A G 

'Twas in the moon of wintertime 
when all the birds had fled
That mighty Gitchi Manitou sent angel choirs instead.
Before their light the stars grew dim
and wond'ring hunters heard the hymn:

Seist

E A A G F E 
A G E A 
A B C D E E A 

Jesus your king is born, 
Jesus is born,
In excelsis gloria

Rann 2

Within a lodge of broken bark 
the tender babe was found
a ragged robe of rabbit-skin 
enwrapped his beauty round.
But as the hunter braves drew nigh
the angel-song rang loud and high:

Rann 3

The earliest moon of wintertime
is not so round and fair
as was the ring of glory on
the helpless Infant there.
The chiefs from far before him knelt
with gifts of fox and beaver pelt:

Rann 4

O children of the forest free
O sons of Manitou
The Holy Child of earth and heaven
is born this day for you.
Come kneel before the radiant boy
Who brings you beauty, peace and joy:

%}

triobail = \relative c'' {
	\clef treble
	a4 c4 c4 d4 c4 a2 f4 g4 g4 f4 g4 a2.  \bar" " \break
    f4 a4 c4 c4 d4 c4 a2 f4 g4 g4 f4 d4 c1      \bar" " \break
}

triobailSeist = \relative c'' {
	a2 a8. g16 f8. d16 c2 f2 g8 g4 g8 g4 f4 a4 c4 d4 (c4)\break
    a2 a8. g16 f8. d16 c2 f4 bes4 a4 a4 g8 (f8) g4 f1
}

alto = \relative c' {
	f2 f2 f1 e4 e4 d4 e4 f2.
	f4 f2 f2 f4 c2. b1 c1
}

altoSeist = \relative c' {
	f2 f8. c16 c8. d16 c2 f2 e2 e4 d4 f2 f2
	f2 f8. c16 c8. d16 c2 f4 f4 f4 f4 e8 d8 e4 c1
}

dos = \relative c {
	\tempo 4 = 90
	f4 a4 a4 bes4 a4 f4 e4 d4 bes'2 bes2 f4 c4 f,4
	r4 f'4 a4 a4 bes4 a4 f4 e4 ees4 f2 f2 e4 f4 g4 bes4
}

dosSeist = \relative c' {
	\tempo 4 = 120
	c4 a4 c8. bes16 a8. bes16 a4 bes4 a4 a4 bes2 bes2 c4 a4 bes4 a4
	c4 a4 c8. bes16 a8. bes16 a2 a4 bes4 c2 bes2 a1
}

beus = \relative c {		\tempo 4 = 90
	f4 a4 a4 bes4 a4 f4 e4 d4 c2 c2 f4 c4 f,4
	r4 f'4 a4 a4 bes4 a4 f4 e4 ees4 d2 d2 c4 d4 e4 g4
}

beusSeist = \relative c {
	f2 f4.. f16 f4 g4 f4 d4 c4 c4 c4 c4 f1
	f2 f4.. f16 f4 e4 d4 des4 c4 c4 c4 c4 f4 c4 f,4
}


rannA = \lyricmode { 
	When I was a seek -er I sought both night and day
	I asked the Lord to help me, And He showed me the way
}

seist = \lyricmode {  
	Go tell it on the moun -tain o -ver the hills and e -v'ry -where
	Go tell it on the moun -tain that Je -sus Christ is born
}

rannB = \lyricmode { 
	He made me a watch -man Up -on a cit -y wall
	And if I am a Chris -tian I am the least of all
}

giotar = \chordmode {
	f2. bes4 f1 c2:7 bes4 c4:7 f1
	f2. bes4 f1 g1:7 c2 c2:7
}

giotarSeist = \chordmode {
	f1 f1 c1:7 f2 bes4 f4 
	f1 f2 d4:m bes4:m f2 c2:7 f1 
}

\header{ title = "Go Tell It on the Mountain"}

\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar \giotarSeist 
    	}
		\new Staff << 
			\key f \major
        	\time 4/4 \tempo 4 = 110
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail 
    	    	\time 4/4 \tempo 4 = 125
				\mark "Seist" \triobailSeist 
			}
		\addlyrics { \rannA  \seist }
		\addlyrics { \rannB  }
		\new Voice = "a" { \voiceTwo
				\alto \altoSeist
            }
          >>
		\new Staff <<  
			\key f \major
			\time 4/4 
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

