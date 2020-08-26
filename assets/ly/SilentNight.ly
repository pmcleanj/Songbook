

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================







%}

triobail = \relative c'' {
	\clef treble
	g4. (a8) g4 e2. g4. (a8) g4 e2. d'2 d4 b2. c2 c4 g2. \break
 	a2 a4 c4. (b8) a4 g4. a8 g4 e2. a2 a4 c4. (b8) a4 g4. a8 g4 e2. \break
	d'2 d4 f4. d8 b4 c2. (e2.) c4. (g8) e4 g4. f8 d4 c2. (c2.)
}

alto = \relative c' {
	e4. (f8) e4 c2. e4. (f8) e4 c2. f2. d4 e4 f4 e2. e2. 
	f2 f4 a4. (g8) f4 e4. f8 e4 c2. f2 f4 a4. (g8) f4 e4. f8 e4 c2. 
	f2. b2. a2. a2. e2. b2. r2 a4 g2.
}

dos = \relative c' {
	c2. g4. a8 g4 c2. g4. a8 g4 b2. g2. g2. g4 a4 bes4
	c2. c2. c2. g4 a4 bes4 c2. c2. c2. g4 a4 g4
	b2. d2 f4 e2. c2. c2. f,2. e2 f4 e2. 
}

beus = \relative c {
	c2. c2. c2. c2. g'2. f4 e4 d4 c2. c2. 
	f2. f2. c2. c2. f2. f2. c2. c2. 
	g2. g2. a2 g4fis2. g2. g,2. c2. c2. 
}

rannA = \lyricmode { 
	Si -lent night! Ho -ly night! All is calm
	All is bright, round yon vir -gin moth -er and child
	Ho -ly infant so ten -der and mild Sleep in heav -en -ly
	peace Sleep in heav -en -ly peace
}


rannB = \lyricmode { 
	Si -lent night! Ho -ly night! Shep -herds quake
	at the sight! Glo -ries strem from heav -en a -far
	Heav -enly hosts sing Al -le -lu -ia Christ the sav -ior is 
	born Christ the sav -ior is born
}

rannC = \lyricmode { 
	Si -lent night! Ho -ly night! Son of God
	Love's pure light, Rad -iant beams from they ho -ly face
	with the dawn of re -deem -ing grace, Je -sus Lord at thy
	birth, Je -sus Lord at thy birth
}


giotar = \chordmode {
	c2. c2. c2. c2. g2.:7 g2.:7
	c2. c2 c4:7 f2. f2. c2. c2 c4:7
	f2. f2. c2. c2. g2.:7 g2.:7
	a2.:m a2.:m6 c2. g2.:7 c2 f4 c2.
}


\header{ title = "Go Tell It on the Mountain"}

\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar \giotarSeist 
    	}
		\new Staff << 
			\key c \major
        	\time 3/4 \tempo 4 = 90
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
			\key c \major
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

