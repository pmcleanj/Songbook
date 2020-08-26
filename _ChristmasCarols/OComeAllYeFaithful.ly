\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================




O Come, All Ye Faithful

John Francis Wade

1751 Public Domain

Rann 1

G D
G C G D
Em A D G D A D
G Am C G Bm Em D

O come, all ye faithful
Joyful and triumphant
O come ye, O co-me ye to Be -th -le -hem!
Come and be-hold Him, born the King of angels

chorus

G D
G D
C Am7 D G C
G D G

O come let us adore Him
O come let us a -dore Him
O come let us a -dore H -i -m
Chr -ist the Lord

Rann 2

Sing choirs of angels,
sing in exultation,
O sing, all ye citizens of heaven above!
Glory to God, all glory in the highest!


Rann 3

God of God,
Light of Light,
Lo, he abhoreth not the Virgin's womb;
Son of the Father, begotten, not created;

Rann 4

See how the shepherds,
summoned to His cradle,
Leaving their flocks, draw nigh to gaze;
We too will thither bend our joyful footsteps;

Rann 5

Yea, Lord, we greet Thee,
born this happy morning,
Jesus, to Thee be all glory given;
Word of the Father, now in flesh appearing!

%}

triobail = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \partial 4 g4 g2 d4 g a2 d, b'4 a b c b2 a4 \bar "" \break
             g g2 fis4 e4 fis4 g a b fis2 e4. d8 d1 \bar "" \break
             d'2 c4 b4 c2 b2 a4 b4 g4 a4 fis4. (e8) d4 \bar "" \break
                }

triobailSeist = \relative c' {
  \clef treble
  \partial 4 g'4 g4 fis4 g4 a4 g2 d4 b' b4 a4 b4 c4 b2 a4 \bar "" \break
              b4 c4 b4 a4 g4 fis2 g4 (c4) b2 (a4.) g8 g2. 
                }

alto = \relative c'' {
	\partial 4 g4 g2 d4 g d2 d2 d4 d d e 
	d2 d4 b b (cis) d e d d d d 
	d2 cis4. d8 d1 d'4 (d,4) e8 (fis8) g4
	c4 (d,4) b'4 (d,4) d4 d4 e4 e4 d4. (e8) d4
}

altoSeist = \relative c'' {
	g4 d4 d4 d4 d4 d2 d4 d4 d4 d4 d4 d4 d2 d4 d4 
	e8 (fis8) g4 a4 cis,4 d2 d4 (e4) g2 (fis4.) g8 d2. 
}

dos = \relative c' {
	r4 b1 a1 g4 fis g g g2 fis4 e e2 d4 a' a2. g4 
	a2 g2 fis1 b2 a4 g a2 g fis4 g e c d a'8 g fis4 
}

dosSeist = \relative c' {
	r4 b4 a b c b2. g4 g fis g a g2 fis4 g a g fis e d c b c r4 d'4 c2 b2.
}

beus = \relative c' {
	r4 g1 fis1 g4 fis g c, 
	d2. e4 e2 d4 cis d e fis g 
	a2 a,2 d1 b'2 a4 g4 
	a2 g2 fis4 g e c d a'8 (g8) fis4
}

beusSeist = \relative c' {
	r4 b4 a b c b2. g4 g fis g a g2 fis4 g a g fis e d c b c d2. d4 g2.
}

Ranna = \lyricmode { 
O come, all ye faith -ful
Joy -ful and tri -um -phant
O come ye, O co -me ye to Beth - -le -hem!
Come and be -hold Him, born the King of an -gels
}

seist = \lyricmode { 
O come let us a -dore Him
O come let us a -dore Him
O come let us a -dore Him__
Christ the Lord
  }

Rannb = \lyricmode { 
- Sing choirs of an -gels,
Sing in ex -ul -ta -tion,
O sing, all ye ci -ti -zens of hea - v'n above!
Glo -ry to God -, in -  the -  high -est!
}

Rannc = \lyricmode { 
- God of - God -,
Light - of -  Light - ,
Lo, he ab -hor -eth not the Vir - gin's womb;
Son of the Fa -ther,be -got -ten, not cre -a -ted;
}

Rannd = \lyricmode { 
-  See how the shep -herds,
sum -moned to His cra -dle,
Leav -ing their flocks, draw nigh to with low__ -ly fear;
We too will thi -ther bend our joy -ful foot__ -steps;
}

Ranne = \lyricmode { 
- Yea, Lord, we greet Thee,
born this hap- py morn- ing,
Jesus, to Thee be all glo- ry given;
Word of the Fa- ther, now in flesh ap- pear- ing!
}


giotar = \chordmode {
r4 g1 d1 
g4 d4 g4 c4 
g2 d4 e:m e2:m d4 a4 d4 g:6 d4 
g4 d2 a2:7 d1 g2 d4:7 g d2:7 g d4 g c a:m d1
}

giotarSeist = \chordmode {
g4 d g d g1
g4 d g d:7 g2
d4 g d:7 g d a:7 
d2 g4 c g2 d2:7 g2.
}

\header{ title = "O Come All Ye Faithful"}

\score {  
   \new ChoirStaff <<  
    \new ChordNames {
      \set chordChanges = ##t
      %\repeat unfold \aireamh { \giotar \giotarSeist }
	\giotar \giotarSeist
    }
      \new Staff << 
         \key g \major
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
		%\addlyrics { \Rannd  }
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
   
%}
