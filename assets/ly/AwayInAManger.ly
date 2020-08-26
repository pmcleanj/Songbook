

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
	\partial 4  
	c4 c4. bes8 a4 a4 g4 f4 f4 e4 d4 c2 \bar" " \break
    c4 c4. d8 c4 c4 g'4 e4 d4 c4 f4 a2      \bar" " \break
	c4 c4. bes8 a4 a4 g4 f4 f4 e4 d4 c2 \bar" " \break
	c4 bes'4. a8 g4 a4 g4 f4 g4 d4 e4 f2
}

alto = \relative c'' {
	\partial 4 
	a4 a4. g8 f4 c2. d4 c4 bes4 a2
	c4 bes2. bes2. d4 c4 f4 f2
	a4 a4. g8 f4 c2. d4 c4 bes4 a2
	c4 e4. f8 g4 c,2. d4 d4 c4 c2
}

dos = \relative c {
	\partial 4
	r4 f2. f2. bes,4 c4 d8 e8 f2
	r4 g4. f8 e4 e4 d4 c4 bes'4 a2 c2
	r4 f,2. f2. bes,4 c4 d8 e8 f2
	r4 g4. f8 e4 f4 bes4 a4 bes4 bes,4 bes'4 a2
}

beus = \relative c, {	
	\partial 4
	r4 f2. f4. g8 a4 bes4 c4 d8 e8 f2
	r4 g4. f8 e4 e4 d4 c4 f2. f2
	r4 f,2. f4. g8 a4 bes4 c4 d8 e8 f2
	r4 g4. f8 e4 f4 bes4 a4 bes4 bes,4 c4 f2}



rannA = \lyricmode { 
	A -way in a man -ger no crib for a bed
	The lit -tle Lord Je -sus laid down his sweet head
	The stars in the bright sky looked down where he lay
	The lit -tle Lord Je -sus a -sleep on the hay
}

rannB = \lyricmode { 
	The cat -tle are low -ing the ba -by a -wakes
	But lit -tle Lord Je -sus no cry -ing he makes
	I love Thee Lord Je -sus look down from the sky
	And stay by my cra -dle 'til morn -ing is nigh
}

rannC = \lyricmode { 
	Be near me Lord Je -sus I ask Thee to stay
	Close by me for -ev -er and love me I pray
	Bless all the dear child -ren in they ten -der care
	And fit us for hea -ven to live with Thee there 
}


giotar = \chordmode {
\partial 4 r4 f2. f2. bes4 c4 bes4 f2
f4 c2.:7 c2.:7 bes4 f2 f2
f4 f2. f2. bes4 c4 bes f2
f4 c2.:7 f4 c4:7 f4 g2:m c4:7 f2
}

giotarSeist = \chordmode {
	g1:m  f4 e d2 g2.:m d4:m7 g:m d:m g:m d:7 g:m  
}

\header{ title = "Away In a Manger"}

\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar 
    	}
		\new Staff << 
			\key f \major
        	\time 3/4 \tempo 4 = 120
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail  
			}
		\addlyrics { \rannA  }
		\addlyrics { \rannB  }
        \addlyrics { \rannC  }
		\new Voice = "a" { \voiceTwo
				\alto 
            }
          >>
		\new Staff <<  
			\key f \major
			\time 3/4 
			\clef "bass"
			\new Voice = "t" { \voiceThree 
				\dos
            }

			\new Voice = "b" { \voiceFour
				\beus
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
