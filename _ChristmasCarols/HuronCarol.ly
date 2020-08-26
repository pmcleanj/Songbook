
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

triobail = \relative c' {
	\clef treble
	\partial 8  r8 r2 r2 r2 r4 r8 \bar" " \break
                e8 a b c d c b a  
                g8 a a b g a4 r8  \bar" " \break
                e8 a b c d c b a  
                g8 a c b g a4 r8  \bar" " \break
				a  e e b c d8. c16 
				b8 b c b a a b8. a16 a (g)
}

triobailSeist = \relative c' {
	e8 a a4 g8 f e4
	a g8 e a r \bar" " \break
    a b c d e e, a4. r8
}

alto = \relative c' {
	\partial 8  r8 r2 r2 r2 r4 r8 \bar" " \break
              r8 r2 r2 r2 r4 r8 \bar" " \break
}

altoSeist = \relative c' {
	 \bar" " \break
}

dos = \relative c' {
	\partial 8   \bar" " \break
}

dosSeist = \relative c' {
	  \bar" " \break
}

beus = \relative c' {	\partial 8   \bar" " \break
}

beusSeist = \relative c' {
	\bar" " \break
}


rannA = \lyricmode { 
  'Twas in the moon of win- ter- time when all the birds had fled, 
  That might- y Gi- tchi Ma- ni- tou sent an- gel choirs in- stead; 
  Be- fore their light the stars grew dim, 
     and won- d’ring hun- ters heard the hymn:
}

seist = \lyricmode {  
  Jes- us your King is born, Je- sus is born, 
   In ex- cel- sis glo- ri- a. 
}

rannB = \lyricmode { 
With- in a lodge of bro- ken bark the ten- der Babe was found, 
A rag- ged robe of rab- bit skin en- wrapp'd His beau- ty round; 
But as the hun -ter braves drew nigh, the an- gel song rang loud and high:
}

rannC = \lyricmode { 
The earl- iest moon of win- ter- time is not so round and fair,
As was the ring of glo- ry on the help- less in- fant there;
The chiefs from far be- fore him knelt with gifts of fox and bea- ver pelt. 
}
rannD = \lyricmode { 
O child- ren of the for- est free, O sons of Man- i- tou, 
The Ho- ly Child of earth and heaven is born to- day for you. 
Come kneel be- fore the ra- diant Boy who brings you beau- ty, peace and joy. 
}


giotar = \chordmode {
  
}

giotarSeist = \chordmode {

}

\header{ title = "The Huron Carol"}

\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar \giotarSeist 
    	}
		\new Staff << 
			\key c \major
        	\time 4/8 \tempo 4 = 90
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail \mark "Seist" \triobailSeist 
			}
%			\new Voice = "a" { \voiceTwo
%				\alto \altoSeist
%            }
        \addlyrics { \rannA  }
		\addlyrics { \rannB  }
        \addlyrics { \rannC  }
		\addlyrics { \rannD  } 
         >>
%{		\new Staff <<  
			\key c \major
			\time 4/8 
			\clef "bass"
			\new Voice = "t" { \voiceThree 
				\dos \dosSeist
            }

			\new Voice = "b" { \voiceFour
				\beus \beusSeist
            }
		>>  %}  
      >> 
   
   \layout { 
      indent = #0 
      \override Score.BarNumber.break-visibility = ##(#f #f #f) 
      }
   \midi {\context {\Score
      midiChannelMapping = #'harp } }
   }  
