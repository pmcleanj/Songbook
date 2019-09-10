
%{
Lead Sheet template: chords, melody, lyric
===================




What Child Is This

William C. Dix, Public Domain

Key of

S E
A E
T G
B E
Em G D Bm
Em C B7
Em G D Bm
Em B7 Em
G D Bm
Em C B7
G D Bm
Em B7 Em

What Child Is This Who Laid To Rest
On Mary's Lap Is Sleeping
Whom Angels Greet With Anthems Sweet
While Shepherds Watch Are Keeping
This, This Is Christ The King
Whom Shepherds Guard And Angels Sing
Haste, Haste To Bring Him Laud
The Babe The Son Of Mary

Rann 2

Why lies His in such mean estate
Where ox and ass are feeding?
Good Christian, fear for sinners here
The silent Word is pleading
Nails, Sword shall pierce Him through
The Cross be borne for me, for you
Hail, hail the Word made flesh,
The Babe The Son Of Mary

Rann 3

So Bring Him Incense , Gold And Myrrh
Come Peasant, King, To Own Him
The King Of Kings Salvation Brings
Let Loving Hearts Enthrone Him
Raise, raise a song on high,
The virgin sings her lullaby.
Joy, joy for Christ is born,
The Babe, the Son of Mary.

%}

triobail = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \partial 8 f8 aes4 bes8 c8. (des16) c8 bes4 g8 ees8. (f16)
             g8 aes4 f8   f8. (e16) f8 g4. c,4 \bar "" \break
             f8 aes4 bes8 c8. (des16) c8 bes4 g8 ees8. (f16)
             g8 aes8. (g16) f8 e8. (d16) e8 f4. f4. \bar "" \break
 
             ees'4. ees8. (des16) c8 bes4 g8 ees8. (f16) 
             g8 aes4 f8 f8. (e16) f8 g4 e8 c4. \break
             ees'4. ees8. (des16) c8 bes4 g8 ees8. (f16)
             g8 aes8. (g16) f8 e8. (d16) e8 f4. f4
                }

alto = \relative c' {
	\partial 8 c8 f4 ees8 ees4 aes8 g4 g8 ees8. f16 des8 c4. bes4 bes8 bes4. bes4 
	c8 f4 ees8 ees4 aes8 g4 g8 ees8. f16 des8 c4. bes4 bes8 c4. c4. 

	g'4. c8. bes16 aes8 g4 g8 ees8. f16  des8 c4. bes4 bes8 g'4 e8 c4.
	g'4. c8. bes16 aes8 g4 g8 ees8. f16  des8 c4 des8 c4 c8 c4. c4
}

dos = \relative c' {
	\partial 8 aes8 c4 bes8 aes4 ees'8 ees4 bes8 g4 bes8 aes4. f4 f8 e4. e4
	aes8 c4 bes8 aes4 ees'8 ees4 bes8 g4 bes8 f8. g16 aes8 bes4 bes8 aes4. aes4.

	ees'4 bes8 ees4 ees8 ees4 bes8 g4 bes8 aes4. f4 f8 e2.
	ees'4 bes8 ees4 ees8 ees4 bes8 g4 bes8 aes4 bes8 bes4 bes8 aes4. aes4
}

beus = \relative c {
	\partial 8 f8 f4 g8 aes4 aes8 ees4. ees4 e8 f4. des4 des8 c4. c4 
	f8 f4 g8 aes4 aes8 ees4. ees4 e8 f8. g16 aes8 c,4 c8 f4. f4.

	c'4 bes8 aes4 aes8 ees4. ees4 e8 f4. des4 d8 c2.
	c'4 bes8 aes4 aes8 ees4. ees4 e8 f4 bes,8 c4 c8 f4. f4
}

Ranna = \lyricmode { 
      What Child is this who laid to rest
      on Mar -y's lap is sleep -ing?
      Whom an -gels greet with an- thems sweet
      while shep- herds watch are keep -ing?
      This, this is Christ the King, 
      whom shep -herds guard and an -gels sing.
      Haste, haste to bring Him laud, 
      the Babe, the Son of Ma -ry.
      }

Rannb = \lyricmode { 
      Why lies His in such mean e -state
      Where ox and ass are fee -ding?
      Good Chris -tian, fear for sin -ners here
      The si -lent Word is plea -ding
      Nails, Spear shall pierce Him through
      the Cross be borne for me, for you
      Hail, hail the Word made flesh,
      the Babe the Son of Ma -ry
      }

Rannc = \lyricmode { 
      So bring him in -cense, gold and myrrh
      come pea -sant, king, to own him
      The King of Kings sal -va -tion brings
      Let lov -ing hearts en -throne Him
      Raise, raise the song on high,
      the vir -gin sings her lul -la -by.
      Joy, joy for Christ is born,
      the Babe, the Son of Ma -ry.
      }



giotar = \chordmode {
     \partial 8 r8 f4:m ees8 aes4. ees4. ees4 e8:dim f4.:m bes4.:m c4.:7 c4:7 
      f8:m f4:m ees8 aes4. ees4. ees4 e8:dim f4.:m c4.:7 f4.:m f4.:m
      c4.:m aes4. ees4. ees4 e8:dim f4.:m bes4.:m c4. c4.
      c4.:m aes4. ees4. ees4 e8:dim f4.:m  c4.:7 f4.:m f4:m
      }


\header{ title = "What Child is this"}


\score {  
   \new ChoirStaff <<  
    \new ChordNames {
      \set chordChanges = ##t
		\giotar 
    }
      \new Staff << 
         \key aes \major
         \time 6/8 \tempo 4 = 80
         \clef "treble"
         \new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail  
               }

        \addlyrics { \Ranna  }
		\addlyrics { \Rannb  }
        \addlyrics { \Rannc  }
        \new Voice = "a"  { \voiceTwo
			\alto 	
		}

         >> 

      \new Staff <<  
         \key aes \major
         \clef "bass"
         \new Voice = "t" { \voiceThree 
                \dos 
            }
         \new Voice = "b"  { \voiceFour
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


%{\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \Rann_a
  >>
  \header{ piece = "Rann one"}
  \layout {indent = #0 }
  \midi {\context {\Score
      midiChannelMapping = #'piano } }
}


\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \Rann_b
  >>
  \header{ piece = "Rann two"}
  \layout {indent = #0 }
}


\score {
  <<
    
    \new ChordNames {
      \set chordChanges = ##t
      \guitar
    }
    \new Voice = "one" { \treble }
    \addlyrics \Rann_c
  >>
  \header{ piece = "Rann three"}
  \layout {indent = #0 }
}


%}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
%{


%}