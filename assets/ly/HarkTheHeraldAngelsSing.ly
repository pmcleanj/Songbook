\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
%{
Lead Sheet template: chords, melody, lyric
===================




Hark The Herald Angels Sing

Charles Wesley, 1749 Public Domain


D A
D/F# G D A D
D E
A E A
D D/F# G A
D D/F# G A
G Em B7 Em
A D D A D

chorus

G Em B7 Em
A D A D



Rann 1

Hark The Herald Angels Sing
Glory To The Newborn King
Peace On Earth And Mercy Mild
God And Sinners Reconciled
Joyful all ye nations rise
jJoin The Triumph Of The Skies
With Th' Angelic Host Proclaim
Christ Is Born In Beth-le-hem

chorus

Hark the herald angels sing
Glory to the new born King

Rann 2

Christ, by highest heaven adored;
Christ, the everlasting Lord;
Late in time behold him come,
Offspring of the Virgin's womb.
Veiled in flesh the Godhead, see;
Hail th'incarnate Deity,
Pleased as man with men to dwell;
Jesus, our Emmanuel!


Rann 3

Hail, the heaven-born Prince of Peace!
Hail, the Sun of Righteousness!
Light and life to all He brings,
Risen with healing in His wings,
Mild he lays his glory by,
Born that man no more may die,
Born to raise the sons of earth,
Born to give them second birth.


Rann 4

Come, Desire of nations come,
Fix in us Thy humble home;
Rise, the Woman's conquering Seed,
Bruise in us the Serpent's head.
Adam's likeness now efface:
Stamp Thine image in its place;
Second Ad- am, from a- bove,
Re- in- state us in thy love.
%}
%=====================================================






triobail = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key f \major
  \time 4/4 \tempo 4 = 110
  c4 f f4. e8 f4 a a (g)
  c4 c c4. bes8 a4 g a2 \break
  c,4 f f4. e8 f4 a a (g)
  c4  g g4. e8 e4 d c2 \break
  c'4 c c f, bes a a (g) 
  c4 c c f, bes a a (g) \break
  d'4 d d c bes a bes2
  g4 a8 (bes) c4. f,8 f4 g a2
   }

triobailSeist = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \clef treble
  \key f \major
  \time 4/4 \tempo 4 = 110
  d4. d8 d4 c bes a bes2
  g4 a8 (bes) c4. f,8 f4 g f2 
  \pageBreak
   }


alto = \relative c' {
	c4 f4 f4. e8 f4 a f (e) f e d4. d8 f4 e4 f2
	c4 f4 f4. e8 f4 f4 f2 e4 d4 e4. e8 c4 bes4 c2
	c'4 c c f, g f f (e) c' c c f, g f f (e) 
	d4 d d d d fes g2 e4 e4 c'4. f,8 f4 e f2
}

altoSeist = \relative c' {
	d4. d8 d4 d4 d fes g2 e4 e f4 f4 f4 e4 f2
}

dos = \relative c' {
	a4 a a4. g8 f4 c' c2 c4 c d d c c c2 a4 a a4. g8 f4 c' d2 c4 d g,4. g8 a4 f e2 c'4 c c c c c c2 c4 c c c c c c2 d4 d d d d c bes2 c4 c c4. a8 a4 c c2
}

dosSeist = \relative c' {
	d4. d8 d4 c bes a bes2 c4 c c4. a8 a4 bes a2
}


beus = \relative c {
	f4 f4 f4. g8 a4 f c2 a'4 a4 bes (g) c c, f2
	f4 f4 f4. c'8 d4 c b2 a4 b c4. d,8 f4 g, c2
	c'4 c c a e f c2 c'4 c c a e f c2
	bes'4 bes bes a g d g2 bes4 bes a4. a8 c,4 c f2
}

beusSeist = \relative c' {
	bes4. bes8 bes4 a g d g2 bes a4. a8 c,4 c f2
}
rannA = \lyricmode { 
Hark The he- rald an- gels sing
Glo- ry to the new- born King
Peace on earth And mer- cy Mild
God And sin- ners re- con- ciled
Joy- ful all ye na- tions rise
Join the tri- umph of the skies
With th'an- ge- lic host pro- claim
Christ is born in Beth- le- hem
}

seist = \lyricmode { 
Hark the he- rald an- gels sing
Glo- ry to the new- born King
}

rannB = \lyricmode { 
Christ, by high- est heaven a- dored;
Christ, the e- ver- las- ting Lord;
Late in time be- hold him come,
Off- spring of the Vir- gin's womb.
Veiled in flesh the God- head, see;
Hail th'in- car- nate De- i- ty,
Pleased as man with men to dwell;
Je- sus, our Em- man- u- el!
}

rannC = \lyricmode { 
Hail, the heaven- born Prince of Peace!
Hail, the Sun of Right- eous- ness!
Light and life to all He brings,
Risen with heal- ing in His wings,
Mild he lays his glo- ry by,
Born that man no more may die,
Born to raise the sons of earth,
Born to give them se- cond birth.
}

rannD = \lyricmode { 
Come, De- sire of na- tions come,
Fix in us Thy hum- ble home;
Rise, the Wo- man's conq' -ring Seed,
Bruise in us the Ser- pent's head.
A- dam's like- ness now ef- face:
Stamp Thine i- mage in its place;
Se- cond A- dam, from a- bove,
Re- in- state us in thy love.
}


giotar = \chordmode {
f2 f4. c8:7 f2. c4 f2 g2:m f4 c4:7 f2
f1 d4:m f4 g2:7 a4:m g c2  f4 g:7  c2
c2. f4 c:7 f2 c4 
c2. f4 c:7 f2 c4
bes2. d4:7 g:m d:7 g2:m c:7 f f4 c:7 f2
}

giotarSeist = \chordmode {
bes2. d4:7 g:m d:7 g2:m c2:7 f f4 c:7 f2
}

%=====================================================



\header{ title = "Hark The Herald Angels Sing"}


\score {  
	\new ChoirStaff <<  
		\new ChordNames {
			\set chordChanges = ##t
%			\repeat unfold \aireamh { \giotar \giotarSeist }
			\giotar \giotarSeist
		}
		\new Staff << 
			\key f \major
			\time 4/4 \tempo 4 = 120
			\clef "treble"
			\new Voice = "s" { \voiceOne
               \override TextScript.outside-staff-priority = #1
               \mark "Rann" \triobail \mark "Seist" \triobailSeist  
			}
         \new Voice = "a"  { \voiceTwo
                 \alto \altoSeist
            }
			\addlyrics { \rannA \seist }
			\addlyrics { \rannB  }
        	\addlyrics { \rannC  }
			\addlyrics { \rannD  }
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


  

  





%{
         \new Voice = "a"  { \voiceTwo
            \repeat unfold \aireamh { 
                 \alto \altoSeist
                 }
            }

         \new Voice = "b"  { \voiceFour
            \repeat unfold \aireamh { 
                 \béas \béasSeist
                 }
            }

%}

