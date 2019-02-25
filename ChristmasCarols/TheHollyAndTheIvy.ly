



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================





O Come O Come Emmanuel


C D E 

O come, O come, Emmanuel,
And ransom captive Israel,
That mourns in lonely exile here,
Until the Son of God appear.
Rejoice! Rejoice! Emmanuel
Shall come to thee, O Israel.

O come, Thou Rod of Jesse, free
Thine own from Satan's tyranny;
From depths of hell Thy people save,
And give them victory o'er the grave.
Rejoice! Rejoice! Emmanuel
Shall come to thee, O Israel.

O come, Thou Dayspring, from on high,
And cheer us by Thy drawing nigh;
Disperse the gloomy clouds of night,
And death's dark shadows put to flight.
Rejoice! Rejoice! Emmanuel
Shall come to thee, O Israel.

O come, Thou Key of David, come
And open wide our heav'nly home;
Make safe the way that leads on high,
And close the path to misery.
Rejoice! Rejoice! Emmanuel
Shall come to thee, O Israel.

%}

triobail = \relative c' {
\partial 4 f4 f8 f8 f4 d'4 c4 a4. f8 f8 f8 f4 d'4 c2 \bar " " \break
c8 (bes8) a8 g8 f4 a4 d,8 d8 c4 f8 (g8) a8 bes8 a4 g4 f2 \bar " " \break
}

triobailSeist = \relative c' {
\partial 4 f4 f8 f8 f4 d'4 c4 (a4) f8 f8 f8 f8 f4 d'4 c2 \bar " " \break
c8 (bes8) a8 g8 f4 a4 d,8 d8 c4 f8 g8 a8 bes8 a4 g4 f2 \bar " " \break
}

alto = \relative c' {
\partial 4 f4 f8 f8 f4 f8 e8 f2. f8 f8 f4 d'4 c2 
a8 g8 f8 e8 d4 cis4 d8 d8 c4 c4 d4 c8 d8 e4 f2
}

altoSeist = \relative c' {
\partial 4 f4 f8 f8 f4 f4 f2. f8 f8 f4 f4 f2
c4 cis4 d4 e4 d8 d8 c4 f8 g8 f2 e4 c2
}

dos = \relative c' {
\partial 4 r4 c2 bes4 a2. bes4 a4 f4 f2
a,8 bes8 c8 cis8 d4 g4 a4 bes4 f4 f4 f4 c'8 (bes8) a2
}

dosSeist = \relative c' {
\partial 4 r4 a8 bes8 c4 bes4 a4 f4 ees4 d8 c8 bes4 bes'4 a8 g8 f4
g4 g4 a4 a4 f4 f4 d8 des8 r4 c'4. bes8 a2
}

beus = \relative c' {
\partial 4 r4 a2 g4 f2ees4 d4 c4 bes4 a2
a8 bes8 c8 cis8 d4 e4 f4 g4 a,4 bes4 c4 c4 f2
}

beusSeist = \relative c {
\partial 4 r4 f8 g8 a4 bes4 a4 f4 ees4 d8 c8 bes4 bes'4 a8 g8 f4
e4 e4 d4 c4 bes4 a4 d8 des8 c2. f2
}

Ranna = \lyricmode { 
The hol -ly and the i -vy when they are both full grown
Of all the trees that-are in the wood the hol -ly bears the crown
}

Seist = \lyricmode {
The ri -sing of the sun and the run -ning of the deer
The play -ing of the mer -ry or -gan sweet sing -ing in the choir
}

Rannb = \lyricmode { 
The hol -ly bears a blos -som as white as lil -y flow'r
And Ma -ry bore sweet Je -sus Christ to be our sweet sa -viour
}


Rannd = \lyricmode { 
The hol -ly bears a prick -le as sharp as a -ny thorn
And Ma -ry bore sweet Je -sus Christ on Christ -mas day in-the morn.
}

Rannc = \lyricmode { 
The hol -ly bears a ber -ry as red as a -ny blood, 
And Ma -ry bore sweet Je -sus Christ to do poor sin -ners good
}


giotar = \chordmode {
\partial 4 r4 f2 g4:m7 f2 f4:7 bes4 f4 bes4 f2. 
f4 d4:m a4:7 d4:m c4:7 f4 bes4 f4 c4:7 f2
}

giotarSeist = \chordmode {
	\partial 4 f4 f2 bes4 f2 f4:7 bes2. f2 c4:7
	a4:7 d4:m a4:m bes4 f4bes8 bes8:m f2 c4:7 f2
}


\header{ title = "The Holly and the Ivy"}


\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar \giotarSeist
    	}
		\new Staff << 
			\key f \major
        	\time 3/4 \tempo 4 = 100
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail  \mark "Seist" \triobailSeist
			}
        \addlyrics { \Ranna  \Seist}
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
		\addlyrics { \Rannd  }

			\new Voice = "a" { \voiceTwo
				\alto \altoSeist
            }  
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
