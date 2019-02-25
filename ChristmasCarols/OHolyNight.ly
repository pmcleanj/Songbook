

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================





Oh Holy Night

Adolphe Adam

C D E 

    O holy night! The stars are brightly shining,
    It is the night of our dear Saviour's birth.
    Long lay the world in sin and error pining,
    Till He appear'd and the soul felt its worth.
    A thrill of hope, the weary world rejoices,
    For yonder breaks a new and glorious morn.

        Fall on your knees! O hear the angel voices!
        O night divine, O night when Christ was born;
        O night divine, O night, O night Divine.

    Led by the light of Faith serenely beaming,
    With glowing hearts by His cradle we stand.
    So led by light of a star sweetly gleaming,
    Here come the wise men from the Orient land.
    The King of Kings lay thus in lowly manger;
    In all our trials born to be our friend.

        He knows our need, to our weaknesses no stranger,
        Behold your King! Before Him lowly bend!
        Behold your King, Before Him lowly bend!

    Truly He taught us to love one another;
    His law is love and His gospel is peace.
    Chains shall He break for the slave is our brother;
    And in His name all oppression shall cease.
    Sweet hymns of joy in grateful chorus raise we,
    Let all within us praise His holy name.

        Christ is the Lord! O praise His Name forever,
        His power and glory evermore proclaim.
        His power and glory evermore proclaim.
%}

triobail = \relative c' {
	e4. e4 e8 g4. (g4) g8 a4 a8 f4 a8 c2. g4 \bar " " \break
	g8 e4 d8 c4. e4 f8 g4. f4 d8 c2. (c2.) 	\break
	e4. e4 e8 g4. (g4) g8 a4 a8 f4 a8 c2. g4 	\bar " " \break
	g8 fis4 e8 b'4. g4 a8 b4. c4 b8 e,2. (e4. e8) r8 \bar " " \break
	g8 g4. a4. d,4. g4. a4 g8 c4 e,8 a4. g4 \bar " "\break 
	g8  g4. a4. d,4. g4. a4 g8 c4 e,8 g2. \break 
	
	
}

triobailSeist = \relative c'' {
	c2. (c4.) b4 a8 b2. (b4. b4) b8 
	d2. (d4)  a8 a4 a8 c2. c4. (c4) \bar " " \break
	c8 e2. (e4. e4) g,8 c2. (c4.) b4 (a8) g2. (g4) g8 a4 g8 g2. (g4.) \bar " " \break
	c4. d2. (d4.) g,4. g'2. (f4.) e4 (d8) c2. (b4) b8 c4 d8 c2. (c2.)

}

dos = \relative c {
	c8 e8 g8 c8 g8 e8 c8 e8 g8 c8 g8 e8 c8 f8 a8 c8 a8 f8 c8 e8 g8 c8 g8 e8 
	c8 e8 g8 c8 g8 e8 c8 e8 g8 c8 g8 e8 c8 e8 g8 e8 g8 b8 c,8 e8 g8 e8 g8 e8 c8 e8 g8 e8 g8 e8 c8 e8 g8 c8 g8 e8
	c8 e8 g8 c8 g8 e8 c8 e8 g8 c8 g8 e8 c8 e8 g8 c8 g8 e8 c8 e8 ais8 c,8 e8 ais8 b,8 e8 g8 b8 g8 e8
	b8 dis8 fis8 a8 fis8 dis8 e8 g8 b8 g8 b8 g8 e8 g8 b8 e,4 r8 f8 g8 b8 d8 b8 g8 f8 g8 b8 d8 b8 g8 e8 g8 c8 e8 c8 g8 
	e8 g8 c8 e8 c8 g8 f8 g8 b8 d8 b8 g8 f8 g8 b8 d8 b8 g8 e8 g8 c8 e8 c8 g8 e8 g8 c8 g8 c8 e8
}

altoSeist = \relative c' {
	r8 e8 e8 e8 e8 e8 r8 e8 e8 e8 e8 e8 r8 e8 e8 e8 e8 e8 r8 e8 e8 e8 e8 e8 r8 d8 d8 d8 d8 d8 r8 d8 d8 d8 d8 d8
	r2. r2. c'2. b4. (b4) g8 c2. (c4.) b4 (a8) g2. (g4) g8 a4 g8 g2. (g4.) c4.
	r8 d,8 d8 d8 d8 d8 r8 d8 d8 d8 d8 d8 
	r8 c8 c8 c8 c8 c8 d2. r8 e8 e8 e8 e8 e8 f4. (f4) r8 e2. e2.
}

dosSeist = \relative c' {
	r8 c8 c8 c8 c8 c8 r8 c8 c8 c8 c8 c8 r8 b8 b8 b8 b8 b8 r8 b8 b8 b8 b8 b8 r8 a8 a8 a8 a8 a8 r8 a8 a8 a8 a8 a8
	a,8 c8 e8 c8 e8 a8 e8 a8 c8 a8 c8 e8 g,8 c8 e8 c8 e8 c8 f,8 g8 b8 g8 b8 g8 e8 g8 c8 g8 c8 g8 f8 a8 c8 a8 c8 a8 
	e8 g8 c8 g8 c8 g8 d8 f8 b8 f8 b8 f8 c8 e8 g8 e8 g8 c8 g8 c8 e8 e,8 g8 c8 r8 b8 b8 b8 b8 b8 r8 g8 g8 g8 g8 g8 
	r8 g8 g8 g8 g8 g8 a2. r8 c8 c8 c8 c8 c8 d4. (d4) r8 c,8 e8 g8 c8 g8 e8 g2.
}

beusSeist = \relative c' {
	a2. a2. g2. g2. f2. f2.
	a,8 c8 e8 c8 e8 a8 e8 a8 c8 a8 c8 e8 g,2. f2. e2. f2.
	e2. d2. c8 e8 g8 e8 g8 c8 g8 c8 e8 e,8 g8 c8 g2. f2.
	e2. f2. g2. g4. (g4) r8 c,8 e8 g8 c8 g8 e8 c2.
}


Ranna = \lyricmode { 
	O ho -ly night! The stars are bright -ly shin -ing
	It is the night of our dear sa -viours birth
	Long lay the world in sin and e- rror pi -ning 
	Till He ap -peared and the soul felt its worth
	A thrill of hope the wear -y world re -joic -es
	For yon -der breaks a new and glo -rious morn
	Fall on your knees! O hear the an -gel voi -ces!
	O night di -vine O night when Christ was born
	O night di -vine O night O night di -vine!
}

Rannb = \lyricmode { 
	Led by the light of Faith se -rene -ly beam -ing,
    With glow -ing hearts by His cra -dle we stand.
    So led by light of-a star sweet -ly gleam -ing,
    Here come the wise men from the Or -i -ent land.
    The King of Kings lay thus in low -ly man -ger;
    In all our tri -als born to be our friend.
	He knows our need, to-our weak -ness is no strang -er,
	Be -hold your King! Be -fore Him low -ly bend!
	Be -hold your King, Be -fore Him low -ly bend!
}


Rannc = \lyricmode { 
	Tru -ly He taught us to love one a -no -ther;
    His law is love and His go -spel is peace.
    Chains shall He break for the slave is our bro -ther;
    And in His name all op -pres -sion shall cease.
    Sweet hymns of joy in grate -ful cho -rus raise we,
    Let all with -in us praise His ho -ly name.
	Christ is the Lord! O praise His Name for -e -ver,
	His po -wer and glo -ry e -ver -more pro -claim.
	His po -wer and glo -ry e -ver -more pro -claim.
}


giotar = \chordmode {
	c2. (c) f c 
	(c c) g:7 c (c c) 
	c f c c:7 e:m
	b:7 e:m e:m g:7 g:7 c
	c g:7 g:7 c  c
	a:m a:m e:m e:m d:m d:m 
	a:m a:m c g:7 c f 
	c g:7 c c g:7 g:7
	c d:m c g:7 c 
}


\header{ title = "O Holy Night"}

\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar 
    	}
		\new Staff << 
			\key c \major
        	\time 6/8 \tempo 4 = 95
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail  \triobailSeist
			}
        \addlyrics { \Ranna  }
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
			\new Voice = "a" { \voiceTwo
				\triobail \altoSeist
			}
         >>
		\new Staff <<  
			\key c \major
			\clef "bass"
			\new Voice = "t" { \voiceThree 
				\dos \dosSeist
            }

			\new Voice = "b" { \voiceFour
				\dos \beusSeist 
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
