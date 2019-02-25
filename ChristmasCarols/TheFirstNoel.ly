
%{
Lead Sheet template: chords, melody, lyric
===================

%}

triobail = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \partial 4 fis8 (e) d4. (e8) fis (g) a2 b8 (cis) d4 cis b a2    \bar ""   \break
             b8   cis d4  cis  b a b cis d a g fis2       \bar "" \break
             fis8 (e) d4. (e8) fis (g) a2 b8 (cis) d4 cis b a2    \bar "" \break
             b8   cis d4  cis  b a (b) cis d (a) g fis2       \bar "" \break
                }

triobailSeist  = \relative c' {
  \partial 4 fis8 (e)  d4. (e8) fis (g) a2 d8 (cis) b2 b4 a2.    \break
             d4 cis b a (b) cis d (a) g fis2 
}


alto = \relative c' {
	\partial 4 cis4 d2 r4 cis2 r4 a'2 g4 a2 g4 
	a2 g4 a4 b4 g4 fis2 e4 d2 cis4 
	d2 r4 cis2 r4 a'2 g4 a2 g4
	a2 g4 a4 e4 g4 fis2 e4 d2
}

altoSeist = \relative c' {
	cis4 d2 r4 cis2 a'8 cis8 g2 g4 a2 e4
	fis2 d4 d2 g4 fis2 e4 d2 
}

dos = \relative c' {
	\partial 4 a4 a2 r4 a,4 a'4 g4 a2 b8 cis8 d4 cis4 b4
	a2 b8 cis8 d2 a4 a2. d,4 a'4 a4
	a2 r4 a,4 a'4 g4 a2 b8 cis8 d4 cis4 b 4
	a2 b8 cis8 d2 a4 a2. d,4 a'4
}

dosSeist = \relative c' {
	a4 a2 r4 a,4 a'8 g8 fis4 g8 a8 b8 cis8 d8 e8 fis4 d4 cis4
	b4 a4 g4 fis4 g4 e4 d8 e8 fis8 g8 a8 cis,8 d2
}


beus = \relative c' {
	g4 fis4 d4 cis8 b8 a4 a'4 g4 fis2 g4 fis2 g4
	fis2 g4 fis2 e4 d8 e8 fis8 g8 a8 cis,8 d4 a'4 g4
	fis4 d4 cis8 b8 a4 a'4 g4 fis2 g4 fis2 g4
	fis2 g4 fis2 e4 d8 e8 fis8 g8 a8 cis,8 d4 a'4 
}

beusSeist = \relative c' {
	g4 fis2 r4 a,4 a'8 g8 fis4 g8 a8 b8 cis8 d8 e8 fis4 d4 cis4
	b4 a4 g4 fis4 g4 e4 d8 e8 fis8 g8 a8 cis,8 a'2
}

Ranna = \lyricmode { 
The first No- el, the an- gels did say 
was to cer- tain poor shep- herds in fields as they lay 
In fields where they lay keep- ing their sheep 
On a cold win- ter's night that was so  deep 
}

seist = \lyricmode { 
  No- el, No- el, No- el, No- el
  Born is the King of Is- ra- el 
  }

Rannb = \lyricmode { 
They look- ed up and saw - a star 
Shin- ing in - the east - be- yond - them far 
And to the earth it gave - great light 
And - so it con- tinued both day and night 
}

Rannc = \lyricmode { 
And by the light of that - same star 
Three - wise - men came - from coun - try far
To seek for-a king was their - in- tent 
and to fol- low the star where- ever it went
}

Rannd = \lyricmode { 
That star drew nigh to the - north- west
O'er - Beth - le- he -m it took - its rest
and there it did both stop - and stay
right - o- ver the place where Je- sus lay
}

Ranne = \lyricmode { 
Then en- tered in those wise - men three
Full - rev - 'rent- ly - u- pon - their knee
And of- fered there in his - pre- sence
Their - gold - and mhyrr and frank- in- sence
}

Rannf = \lyricmode { 
So let us all with one - ac- cord
Give - prais - es to - our ri - sen Lord
Who hast made Heav'n and Earth - of nought
And - with - his blood man- kind hath bought
}


giotar = \chordmode {
  a4:7 d2. a2. d2 g4 d2 g4 d2 g4 d2 a4:7 d2 a4:7 d2
  a4:7 d2. a2. d2 g4 d2 g4 d2 g4 d2 a4:7 d2 a4:7 d2
}
giotarSeist = \chordmode {
    a4:7 d2. a2 d4 g2. d2 
    a4  b2:m g4 d4 g4 a4:7 d2 a4:7 d2 }

\header{ title = "The First Nowell"}

\score {  
   \new ChoirStaff <<  
    \new ChordNames {
      \set chordChanges = ##t
		\giotar \giotarSeist
    }
      \new Staff << 
         \key d \major
         \time 3/4 \tempo 4 = 120
         \clef "treble"
         \new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail \mark "Seist" \triobailSeist  
               }

        \addlyrics { \Ranna \seist }
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
		\addlyrics { \Rannd  } 
		\addlyrics { \Ranne  }
        \addlyrics { \Rannf  }
        \new Voice = "a"  { \voiceTwo
			\alto \altoSeist	
		}

         >> 

      \new Staff <<  
         \key d \major
         \clef "bass"
         \new Voice = "t" { \voiceThree 
                \dos \dosSeist 
            }
         \new Voice = "b"  { \voiceFour
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


%}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
%{


%}