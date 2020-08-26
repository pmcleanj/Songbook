

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

%{
Wanxian
from “the Untamed”

composer and author

notes transposed up one octave use harmonic-mixed note heads
notes transposed down one octave use diamond note heads
alternate pitches use font-size -2


%}

triobail = \relative c'' {
             
				<a e'>2\arpeggio c4 a  b g e2 a4 b8 c d4 g, 
             		\override NoteHead.style = #'harmonic-mixed
						<\tweak font-size -2 a \tweak font-size -2 c e>1\arpeggio
             		\revert NoteHead.style  \break
				
             	\grace {a32 b c d} e2 c4 a  b a g4. f16 g a4. a8 d c b a b2 r4 c8 d  \break

             	e4. d8 c b c a b4 
            		<\tweak font-size -2 c a>  
					<\tweak font-size -2 b g>2   
            		c8 d e f g4 d <g, c e>2\arpeggio (e'8) d e g \break

				c,2 (c8) b c e a,2 (a8) g <\tweak font-size -2 c g'> e <d, f a c>4.\arpeggio d'8 e d e g <a, c e a>2\arpeggio r8 d e g \break

				c,4 b a g <g e'>8.\arpeggio d' g8 e2 \grace {c32 b} a8 b c a b8. a g8 d' e4. c8 d e g \break

	            c,4 b a g e8. e b'8 a2 (a8) g a c b4 g a2 r8 d, e g \break

             	c4 b a g e8. e b'8 a2 a8 g a c b4 g \break

             	d'16 c b g e d c b' g e d c b' c b g  \break

             	g4 <c, e a c>2.\arpeggio (<c e a c>1) \break
             }


\header{ title = "Wanxian"}

\score {  
		\new Staff << 
			\time 4/4 \tempo 4 = 90
        	\clef "treble"
			\stemNeutral 
 			\transpose e e {
 				\key c \major
       			\triobail 	
				}
        	>>
       }  