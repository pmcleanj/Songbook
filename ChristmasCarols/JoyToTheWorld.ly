\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Lead Sheet template: chords, melody, lyric
===================




Joy To The World

Isaac Watts

Public Domain

Rann 1

C F C G C
F G C
C F C F C
C
G
C F C F C G C


Joy to the world the Lord is come
Let earth receive her King
Let every heart prepare Him room
And heav'n and nature sing
And heav'n and nature sing
And heav'n and heaven and nature sing

Rann 2

Joy to the world the Savior reigns
Let men their songs employ
while fields and floods, rocks, hills and plains
Repeat their sounding joy
Repeat their sounding joy
Repeat repeat their sounding joy

Rann 3

No more let sins and sorrows grow,
Nor thorns infest the ground;
He comes to make His blessing flow
Far as the curse is found,
Far as the curse is found,
Far as, far as the curse is found

Rann 4

He rules the world with truth and grace
And makes the nations prove
The glories of His righteousness
And wonders of His love,
And wonders of His love,
And wonders, wonders of His love




%}

triobail = \relative c'' {
	\override Score.BarNumber.break-visibility = ##(#f #f #f)
	\clef treble
	d4 cis8. b16 a4. g8 fis4 e d4. \bar "" \break
	a'8 b4. b8 cis4. cis8 d2 (d4.) \bar "" \break
	d8 d (cis) b (a) a8. (g16 fis8) d' d (cis) b (a) a8. (g16 fis8) \bar "" \break
	fis fis fis fis fis16 (g16) a4. g16 (fis) e8 e e e16 (fis) g4.\bar "" \break
	fis16 (e) d8 (d'4) b8 a8. (g16 fis8) g fis4 e d2
                       }
alto = \relative c' {
	fis4 a8. g16 fis4. e8 d4 cis4 d4. a'8 g4. g8
	g4. g8 fis2 (fis4.) fis8 fis8 (a8) g8 (fis8) fis8. (e16 d8) fis8
	fis8 (a8) g8 (fis8) fis8. (e16 d8) d8 d8 d8 d8 d16 (e16) fis4. e16 (d16) cis8 cis8 cis8 cis16 (e16)
	e4. cis16 (e16) d8 (g4) a8 g8. (e16 d8) e8 d4 cis4 a2
}

dos = \relative c' {
	a4 d8. d16 d4. b8 a4 g4 fis4. d'8 d4. d8 a4. a8 a2 
	(a4.) a8 a4 d4 d (a8) a a4 d d (a8) r8 r4 r8 d,8 d d d d16 fis16 a4. a8 a4. a16 g fis8 (a4) d8 d4 (a8) d8 a4. (g8) fis2
}

beus = \relative c {
	d4 d8. d16 d4. g8 a4 a,4 d4. fis8 g4. g8
	a4. a8 d,2 (d4.) d8 d4 d4 d4. d8
	d4 d4 d4. r8 r4 r8 d8 d8 d8 d8 d16 fis16 a4. a8
	a,8 a8 a8 a8 d4. d8 d4. g8 a4 a,4 d2
}

Ranna = \lyricmode { 
Joy to the world the Lord is come
Let earth re -ceive her King
Let ev'- ry heart pre -pare Him room
And heav'n and na -ture sing
And heav'n and na -ture sing
And heav'n and heaven and na -ture sing
}

Rannb = \lyricmode { 
Joy to the world the Sa -vior reigns
Let men their songs em -ploy
While fields and floods, rocks, hills and plains
Re -peat their sound -ing joy
Re -peat their sound -ing joy
Re -peat re -peat their sound -ing joy
}

Rannc = \lyricmode { 
No more let sins and sor -rows grow,
Nor thorns in -fest the ground;
He comes to make His bles -sings flow
Far as the curse is found,
Far as the curse is found,
Far as, far as the curse is found
}

Rannd = \lyricmode { 
He rules the world with truth and grace
And makes the na -tions prove
The glo -ries of His right -eou -ness
And won -ders of His love,
And won -ders of His love,
And won -ders, won -ders of His love
}

giotar = \chordmode {
	d2 d4. e8:m d4 a4 d2 
	g2 a2:7 d2 d2 
	d4 g4 d2 d4 g4 d2 
	d2 d2 a2 a2:7 d4. g8 d4. e8:m d4 a:7 d2
}


\header{ title = "Joy to The World"}

\score {  
   \new ChoirStaff <<  
    \new ChordNames {
      \set chordChanges = ##t
      %\repeat unfold \aireamh { \giotar \giotarSeist }
		\giotar 
    }
      \new Staff << 
         \key d \major
         \time 2/4 \tempo 4 = 90
         \clef "treble"
         \new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail 
               }

			\new Voice = "a" { \voiceTwo
				\alto
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



%{
         \new Voice = "a"  { \voiceTwo
                 \alto \altoSeist
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
