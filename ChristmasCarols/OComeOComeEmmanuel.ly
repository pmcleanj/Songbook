


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
\partial 4 e4 g4 b4 b4 b4 a4 (c4 b4) a4 g2. \bar " " \break
a4 b4 g4 e4 g4 a4 (fis4 e4) d4 e2. \bar " " \break
a4 a4 e4 e4 fis4 g2 (fis4) e4 d2. \bar " " \break
g4 a4 b4 b4 b4 a4 (c4 b4) a4 g2. \bar " " \break
}

triobailSeist = \relative c'' {
\partial 4 d4 d2. b4 b2. b4 a4 (c4 b4) a4 g2. \bar " " \break
a4 g4 g4 e4 g4 a4 (fis4 e4) d4 e2.
}

alto = \relative c' {
\partial 4 e4 e2 fis2 g4 g4 g4 e8 fis8 b,2.
d4 d2 c4 b4 e2 b4 d4 e2.
a4 a4 e4 e4 dis4 e2 d4 cis4 d2.
b4 d4 d4 g4 fis4 g4 g4 g4 d8 c8 b2.
}

altoSeist = \relative c'' {
\partial 4 g4 fis2. e4 d2. g4 g4 g4 g4 fis4 b,2.  
d8 c8 b4 e4 c4 e4 e4 c4 b4 a4 b2.
}

dos = \relative c' {
\partial 4 r4 b2 b2 c,4 a4 b4 c8 d8 e2. 
fis4 g4 b,4 c4 e8 d8 c8 b8 a4 g'4 fis4 g4 a4 b4
c8 d8 e8 d8 c4 b4 a4 g2 a4 g4 fis2. 
e4 fis4 g8 fis8 e4 b4 c4 a4 b8 c8 d4 g2.
}

dosSeist = \relative c' {
\partial 4 b4 a2. e4 b'2. g4 c,4 a4 n8c8 d8 dis8 e2.
fis4 g8 fis8 e8 d8 g4 b4 a2 g4 fis4 g2.
}

beus = \relative c {
\partial 4 r4 e2 d2 c4 a4 b4 c8 d8 e2. 
fis4 g4 b,4 c4 e8 d8 c8 b8 a4 b4 b4 e4 fis4 g4
a8 b8 c8 b8 a4 g4 fis4 e2 d4 a4 d2.
e4 fis4 g8 fis8 e4 b4 c4 a4 b8 c8 d4 g2.
}

beusSeist = \relative c {
\partial 4 b4 d2. e4 b'2. g4 c,4 a4 b8c8 d8 dis8 e2. 
fis4 g8 fis8 e8 d8 c4 b4 c4 a4 b4 b4 e2.
}

Ranna = \lyricmode { 
O come, O come, Emm -a -nu -el,
And ran -som cap -tive Is -ra -el,
That mourns in lone -ly ex -ile here,
Un -til the Son of God ap -pear.
}

Seist = \lyricmode {
Re -joice! Re -joice! Emm -a -nu -el 
shall come to thee, O Is -ra -el.
}

Rannb = \lyricmode { 
O come, Thou Rod of Jes -se, free
Thine own from Sa -tan's ty -ran -ny;
From depths of hell Thy peo -ple save,
And give them vic -tory o'er the grave.
}


Rannc = \lyricmode { 
O come, Thou Day -spring, come and cheer,
Our spi -rits by thine ad -vent here;
Di -sperse the glo -omy clouds of night,
And death's dark sha -dows put to flight.
}

Rannd = \lyricmode { 
O come, Thou Key of Dav -id, come
And o -pen wide our hea -v'nly home;
Make safe the way that leads on high,
And close the path to mi -ser -y.
}

Ranne = \lyricmode { 
O come, O come, thou Lord of might
Who to they tribes from Si -nai's height
In an -cient time didst give the law
In cloud and ma -jes -ty and awe
}

giotar = \chordmode {
	\partial 4 r4 e2:m b2:m a2:m7 g4 a4:m e2.:m d4
	g2 c4 e4:m a2:m e4:m b4:m e2.:m
	a4:m a2:m e4:m b4:7 e2:m d4 a4:7 d2. e4:m
	d4 g4 e4:m b4:m a2:m7 g4 d4:7 g2. 
}

giotarSeist = \chordmode {
	g4
	d2. e4:m b2.:m g4 a2:m7 g4 d4:7
	e2.:m d4:7 g4 e4:m c4 e4:m a2:m e4:m b4:m7 e2.:m
}


\header{ title = "O Come O Come Emmanuel"}


\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar \giotarSeist
    	}
		\new Staff << 
			\key g \major
        	\time 4/4 \tempo 4 = 100
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail  \mark "Seist" \triobailSeist
			}
        \addlyrics { \Ranna  \Seist}
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
		\addlyrics { \Rannd  }
		\addlyrics { \Ranne  }

			\new Voice = "a" { \voiceTwo
				\alto \altoSeist
            }  
         >>
		\new Staff <<  
			\key g \major
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
