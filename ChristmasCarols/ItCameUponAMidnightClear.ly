
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================





Title

composer and author

C D E 

Rann 1
It came upon the midnight clear,
That glorious song of old,
From angels bending near the earth,
To touch their harps of gold:
"Peace on the earth, goodwill to men
From heavens all gracious King!"
The world in solemn stillness lay
To hear the angels sing.

Rann 2
Still through the cloven skies they come
With peaceful wings unfurled
And still their heavenly music floats
O'er all the weary world;
Above its sad and lowly plains
They bend on hovering wing.
And ever o'er its Babel sounds
The blessed angels sing.

Rann 3
Yet with the woes of sin and strife
The world hath suffered long;
Beneath the angel-strain have rolled
Two thousand years of wrong;
And man, at war with man, hears not
The peaceful words they bring:
O hush your noise, ye men of strife,
And hear the angels sing.

Rann 4
O ye beneath life's crushing load,
Whose forms are bending low,
Who toil along the climbing way
With painful steps and slow;
Look now, for glad and golden hours
Come swiftly on the wing;
Oh rest beside the weary road
And hear the angels sing.

Rann 5
For lo! the days are hastening on,
By prophets seen of old,
When with the ever-circling years
Shall come the time foretold,
When the new heaven and earth shall own
The Prince of Peace, their King,
And the whole world send back the song
Which now the angels sing.

%}

triobail = \relative c' {
	\partial 8 d8 b'4 fis8 a8 (g8) e8 d4 e8 d4 d8 e8 (fis8) g8 g8 (a8) b8 a4. (a4) \bar " " \break
	d,8 b'4 fis8 a8 (g8) e8 d4 e8 d4 d8 e4 e8 fis8 (e8) d8 g4. (g4) \bar " " \break
	b8 b4 b,8 b8 (cis8) dis8 e4 fis8 g4 b8 a8 g8 fis8 e8 (fis8) e8 d4. (d4) \bar " " \break
	d8 b'4 fis8 a8 (g8) e8 d4 e8 d4 d8 e4 e8 fis8 (e8) d8 g4. (g4) \bar " " \break
}


alto = \relative c' {
	\partial 8 d8 b4. c4. b4 c8 b4 d8 c4. cis4. d4 (e8 fis4)
	d8 b4. c4. b4 c8 b4 d8 c4. c4. b4. (b4)
	b'8 b4 b,8 b8 cis8 dis8 e4 fis 8 g4 b8 d,4. cis4. d4. (d4)
	d8 b4. c4. b4 c8 b4 d8 c4. c4. b4. (b4)
}


dos = \relative c {
	\partial 8 r8 g8 d'8 dis8 e4 fis8 g2. g8 fis8 e8 a4 g8 fis4 e8 d4
	d8 g,8 d'8 dis8 e4 fis8 g2. c,4. d8 e8 fis8 g8 cis,8 d8 g,4
	r8 dis'4. a'8 g8 fis8 g4 dis8 e4 r8 fis4. g8 a8 g8 fis8 a8 b8 c4 
	r8 g,8 d'8 dis8 e4 fis8 g2. c,4. d8 e8 fis8 g8 cis,8 d8 g,4 
}


beus = \relative c {
	\partial 8 r8 g8 d'8 dis8 e4 fis8 g2. g8 fis8 e8 a4 g8 fis4 e8 d4
	d8 g,8 d'8 dis8 e4 fis8 g2. c,4. d8 e8 fis8 g8 cis,8 d8 g,4
	r8 b2. b4. (b4) r8 a4. a4. d4. (d4) 
	r8 g,8 d'8 dis8 e4 fis8 g2. c,4. d8 e8 fis8 g8 cis,8 d8 g,4 
}


Ranna = \lyricmode { 
	It came u -pon a mid -night clear,
	That glo -rious song of old,
	From an -gels ben -ding near the earth,
	To touch their harps of gold:
	Peace on the earth, good will to men
	From hea -v'ns all gra -cious King!
	The world in so -lemn still -ness lay
	To hear the an -gels sing.
}

Rannb = \lyricmode { 
	Still through the clo -ven skies they come,
	With peace -ful wings un -furled;
	And still their hea -v'nly mu -sic floats
	O'er all the wea -ry world:
	A -bove its sad and low -ly plains
	They bend - on ho -v'ring wing,
	And e -ver o'er its Ba -bel sounds
	The ble -ssed a -ngels sing.
}


Rannc = \lyricmode { 
	Yet with the woes of sin and strife
	The world hath suf -fered long;
	Be -neath the a -ngel strain have rolled
	Two thou -sand years of wrong;
	And man, at war with man, hears not
	The pea - -ceful words they bring:
	O hush your noise, ye men of strife,
	And hear the a -ngels sing.
}

Rannd = \lyricmode { 
	O ye be -neath life's cru -shing load,
	Whose forms are ben -ding low,
	Who toil a -long the climb -ing way
	With pain -ful steps and slow;
	Look now, for glad and gol -den hours
	Come swi - -ftly on the wing;
	Oh rest be -side the wea -ry road
	And hear the a -ngels sing.
}

Ranne = \lyricmode { 
	For lo! the days are ha -st'ning on,
	By pro -phets seen of old,
	When with the e -ver cir -cling years
	Shall come the time fore -told,
	When peace shal o -ver all the earth
	Her an - -cient splen -dors fling
	And all the earth send back the song
	Which now the a -ngels sing.
}


giotar = \chordmode {
	\partial 8 r8 g4. c4. g2. c4. a4.:7 d2.
	d4. c4. g2. c4. d4.:7 g2.
	b2.:7 e4:m b8 e4.:m d4. a4.:7 d4. d4.:7
	g4. c4. g2. c4. d4.:7 g4. (g4)
}


\header{ title = "It Came Upon A Midnight Clear"}

\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar 
    	}
		\new Staff << 
			\key g \major
        	\time 6/8 \tempo 4 = 75
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail  
			}
        \addlyrics { \Ranna  }
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
		\addlyrics { \Rannd  }
		\addlyrics { \Ranne  }

			\new Voice = "a" { \voiceTwo
				\alto 
            }  
         >>
		\new Staff <<  
			\key g \major
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
