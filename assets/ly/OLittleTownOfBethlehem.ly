

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================





Oh Little Town of Bethlehem

Phillips Brooks and Lewis H Redner

C D E 

O little town of Bethlehem
How still we see thee lie
Above thy deep and dreamless sleep
The silent stars go by
Yet in thy dark streets shineth
The everlasting Light
The hopes and fears of all the years
Are met in thee tonight

For Christ is born of Mary
And gathered all above
While mortals sleep, the angels keep
Their watch of wondering love
O morning stars together
Proclaim the holy birth
And praises sing to God the King
And Peace to men on earth

How silently, how silently
The wondrous gift is given!
So God imparts to human hearts
The blessings of His heaven.
No ear may his His coming,
But in this world of sin,
Where meek souls will receive him still,
The dear Christ enters in.

O holy Child of Bethlehem
Descend to us, we pray
Cast out our sin and enter in
Be born to us today
We hear the Christmas angels
The great glad tidings tell
O come to us, abide with us
Our Lord Emmanuel.

%}

triobail = \relative c'' {
\partial 4 a4 a4 a4 gis4 a4 c4 bes4 d,4 g4 f4 e8 (f8) g4 c,4 a'2. \bar " " \break
a4 a4 a4 d4 c4 c4 bes4 d,4 g4 f4 e8 (f8) a4. g8 f2. \bar " " \break
a4 a4 a4 g4 f4 e2 e4 e4 d4 e4 f4 g4 a2. \bar " " \break
a4 a4 a4 gis4 a4 c4 bes4 d,4 d'4 c4 f,4 a4. g8 f2.
}


alto = \relative c' {
\partial 4 r4 c4 c4 b4 c4 ees4 d4 bes4 d4 c2 e4 c4 c2.
r4 a'4 g4 fis2 d2 d4 d4 c2 e2 f2. 
r4 f4 f4 e4 d4 cis2. cis4 d4 e4 f4 d4 e2. 
r4 c4 c4 b4 c4 ees4 d4 bes4 d8 e8 f4 b,4 f'4 e4 c2.
}


dos = \relative c {
\partial 4 r4 f1 fis4 g2 g4 a4 g8 a8 bes2 f2. 
r4 c'2 c2 g2 g2 a4 g8 a8 c4. bes8 a2. 
r4 f2 g4 gis4 a2. a4 d,4 e4 f4 bes4 cis2. 
r4 f,1 fis4 g2 bes4 a4 g8 f8 c'4 bes4 a2.
}


beus = \relative c {
\partial 4 r4 f1 bes,2. bes4 c2 c2 f2. 
r4 f4 ees4 d2 g2 bes,2 c2 c2 f2. 
r4 f2 g4 gis4 a2. a4 d,4 e4 f4 bes4 a2. 
r4 f1 bes,2. bes4 c4 d4 c2 f2.
}


Ranna = \lyricmode { 
O lit -tle town of Beth -le -hem
How still we see thee lie
A -bove thy deep and dream -less sleep
The si -lent stars go by
Yet in thy dark streets shi -neth
The e -ver -la -sting Light
The hopes and fears of all the years
Are met in thee to -night
}

Rannb = \lyricmode { 
	For Christ is born of Ma - -ry
And ga -thered all a -bove
While mor -tals sleep, the an -gels keep
Their watch of won -d'ring love
O mor -ning stars to -ge -ther
Pro -claim the ho -ly birth
And prai -ses sing to God the King
And Peace to men on earth
}


Rannc = \lyricmode { 
	How si -lent -ly, how si -lent -ly
The wond -rous gift is giv'n!
So God im -parts to hu -man hearts
The bless -ings of His heav'n.
No ear may his His co -ming,
But in this world of sin,
Where meek souls will re -ceive him still,
The dear Christ en -ters in.
}

Rannd = \lyricmode { 

O ho -ly Child of Beth -le -hem
De -scend to us, we pray
Cast out our sin and en -ter in
Be born to us to -day
We hear the Christ -mas an -gels
The great glad tid -ings tell
O come to us, a -bide with us
Our Lord Em -ma -nu -el.
}

giotar = \chordmode {
	\partial 4 r4 f2 f4:dim f4 fis4:dim g2.:m f2 c2:7 f1
	f4 c4:m6 d2:7 g1:m f2 c2:7 f1
	f2 g4:m gis4:dim a1 d2.:m g4:m a1
	f2 f4:dim f4 fis4:dim g2.:m f4 g4:7 f4 c4:7 f2.
}


\header{ title = "O Little Town of Bethlehem"}


\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
			\giotar 
    	}
		\new Staff << 
			\key f \major
        	\time 4/4 \tempo 4 = 90
        	\clef "treble"
        	\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail  
			}
        \addlyrics { \Ranna  }
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
		\addlyrics { \Rannd  }

			\new Voice = "a" { \voiceTwo
				\alto 
            }  
         >>
		\new Staff <<  
			\key f \major
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
