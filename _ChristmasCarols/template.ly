
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================





Title

composer and author

Rann 1

C D E 

lyrics

Seist

C D E 

lyrics

%}

triobail = \relative c' {
	c4 d e  \bar" " \break
}

triobailSeist = \relative c' {
	c4 d e  \bar" " \break
}

alto = \relative c' {
	c4 d e  \bar" " \break
}

altoSeist = \relative c' {
	c4 d e  \bar" " \break
}

dos = \relative c' {
	c4 d e  \bar" " \break
}

dosSeist = \relative c' {
	c4 d e  \bar" " \break
}

beus = \relative c' {
	c4 d e  \bar" " \break
}

beusSeist = \relative c' {
	c4 d e  \bar" " \break
}


rannA = \lyricmode { 
  lyrics
}

seist = \lyricmode {  
  lyrics 
}

rannB = \lyricmode { 
lyrics
}

rannC = \lyricmode { 
lyrics
}

rannD = \lyricmode { 
lyrics
}


giotar = \chordmode {
  c f g:7
}

giotarSeist = \chordmode {
  c f g:7
}

\header{ title = "title"}

\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar \giotarSeist 
    	}
		\new Staff << 
			\key c \major
        	\time 2/4 \tempo 4 = 90
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail \mark "Seist" \triobailSeist 
			}
			\new Voice = "a" { \voiceTwo
				\alto \altoSeist
            }
        \addlyrics { \Ranna  }
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
		\addlyrics { \Rannd  } 
         >>
		\new Staff <<  
			\key d \major
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
