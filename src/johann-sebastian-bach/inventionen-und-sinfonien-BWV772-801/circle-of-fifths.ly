\language "deutsch"

%% http://lsr.di.unimi.it/LSR/Item?id=1040
%% created by Manuela
%% thanks to the German forum http://www.lilypondforum.de
%% feel free to change and distribute
%%
%% draw a circle of fifths with Lilypond
%% in the style like here https://commons.wikimedia.org/wiki/File:Quintenzirkeldeluxe.png
%% you can use more Scheme if you like
%% e.g. drawing the ticker lines with whitening cirle as one graph
%% needs no include files

%% creating the score snippets
%% we remove some items not needed

coflayout = \layout {
  indent = #0
  \context {
    \Staff
    \omit TimeSignature
    %explicitClefVisibility = #end-of-line-invisible
    %explicitKeySignatureVisibility = #end-of-line-invisible
    \remove "Accidental_engraver"
  }
  \context {
    \Voice
    \omit NoteHead
    \omit Stem
  }
  \context {
    \Score
    %\override BarNumber.break-visibility = #all-invisible
    \override KeyCancellation.break-visibility = #'#(#f #f #f)
  }
}

%% define score snippets als markups
%% in order of appearance

CDur   = \markup \score { { \key c \major g'4 } \coflayout }
GDur   = \markup \score { { \key g \major g'4 } \coflayout }
DDur   = \markup \score { { \key d \major g'4 } \coflayout }
ADur   = \markup \score { { \key a \major g'4 } \coflayout }
EDur   = \markup \score { { \key e \major g'4 } \coflayout }
HDur   = \markup {
  \score { { \key h \major g'4 } \coflayout }
  \score { { \key ces \major g'4 } \coflayout }
}
FisDur = \markup \score { {
  %\override Staff.Clef.transparent = ##t
  %\override Staff.Clef.X-offset = #2
  %\override Staff.ClefModifier.break-visibility = #'#(#f #f #f)
  \key fis \major g'4 } \coflayout
}
GesDur = \markup \score { { \key ges \major g'4 } \coflayout }
DesDur = \markup {
  \score { { \key des \major g'4 } \coflayout }
  \score { { \key cis \major g'4 } \coflayout }
}
AsDur  = \markup \score { { \key as \major g'4 } \coflayout }
EsDur  = \markup \score { { \key es \major g'4 } \coflayout }
BDur   = \markup \score { { \key b \major g'4 } \coflayout }
FDur   = \markup \score { { \key f \major g'4 } \coflayout }

#(define (st-rot stencil myangle)
   ;; just for shortening the code
   (ly:stencil-rotate stencil myangle 0 0))

#(define (x-width mystencil)
   (let* ((x-ext (ly:stencil-extent mystencil X)))
     (- (cdr x-ext) (car x-ext))))

#(define (y-width mystencil)
   (let* ((y-ext (ly:stencil-extent mystencil Y)))
     (- (cdr y-ext) (car y-ext))))

#(define (bogen winkel)
   (* ( / winkel 180) PI))

#(define (kreis-punkt radius winkel)
   ;; this function returns the coordinates of a point on a circumference
   ;; as pair depending on radius and angle
   ;; like a clock: start at midnight ;-)
   ;; winkel = angle (in degrees)
   ;; '(x . y)
   (let* ((wiboma (bogen winkel)) ;; calculate angle as radian measure
           (x-sin (sin wiboma))
           (y-cos (cos wiboma))
           (x-cor (* x-sin radius))
           (y-cor (* y-cos radius)))
     (cons x-cor y-cor)))

#(define (mittel-punkt stencil)
   ;; returns the coordinates of the middle of the stencil als pair
   ;; '( x-middle . y-middle)
   (let*
    ((x-li (car (ly:stencil-extent stencil X)))
     (x-re (cdr (ly:stencil-extent stencil X)))
     (y-li (car (ly:stencil-extent stencil Y)))
     (y-re (cdr (ly:stencil-extent stencil Y))))
    (cons (/ (+ x-li x-re) 2) (/ (+ y-li y-re) 2))))

#(define (move-to-circle radius winkel stencil)
   ;; move a stencil to the edge of a cirle
   ;; depending on radius and angle
   ;; the arithmetic middle of the stenil coordinates is the reference point
   ;; which is moved with its `mittel-punkt' to `kreis-punkt'
   (let* ((mittel (mittel-punkt stencil))
          (mittel-x (car mittel))
          (mittel-y (cdr mittel))
          (kreis (kreis-punkt radius winkel))
          (kreis-x (car kreis))
          (kreis-y (cdr kreis)))
     (ly:stencil-translate stencil
       (cons
        (- kreis-x mittel-x)
        (- kreis-y mittel-y)))))

#(define-markup-command (move-markup layout props mymark radius winkel)
   (markup? number? number?)
   (move-to-circle radius winkel (interpret-markup layout props mymark)))

#(define (move-to-circle-x radius winkel stencil delta)
   ;; move stencil down (at six)
   ;; winkel=0:  left aligned
   ;; winkel<>0: right aligned
   ;; just for Fis/Ges Dur needed
   ;; two scales at six
   (let* ((mittel (mittel-punkt stencil))
          (mittel-x (car mittel))
          (mittel-y (cdr mittel))
          (kreis (kreis-punkt radius winkel))
          (kreis-x (car kreis))
          (kreis-y (cdr kreis)))
     (if (= winkel 0)
         (ly:stencil-translate stencil
           (cons
            (+ (* -2 mittel-x) delta)
            (* radius -1)))
         (ly:stencil-translate stencil
           (cons
            delta
            (* radius -1))))))

#(define-markup-command (move-markup-x layout props mymark radius winkel delta)
   (markup? number? number? number?)
   (move-to-circle-x (+ radius 1.5) winkel (interpret-markup layout props mymark) delta))

#(define-markup-command (move-and-scale layout props mymark faktor x-offset)
   (markup? number? number?)
   (ly:stencil-translate
    (ly:stencil-scale
     (interpret-markup layout props mymark)
     faktor faktor)
    (cons x-offset 0))
   )

#(define QC-radius 30) %% inner radius of the cirle
#(define Abstand 1.45)  %% try what looks best
#(define ticker-len 1.07)
#(define outer-radius (* QC-radius Abstand)) %% outer radius
#(define Dur-radius (* QC-radius 1.16))  %% try what looks best
#(define moll-radius (/ QC-radius 1.3)) %% try what looks best

#(define ticker-line
   ;; this is the archetype of the ticker lines
   ;; that connect the majors with the minors
   ;; I combine six of them rotated at 30, 60, ... degrees
   (make-filled-box-stencil (cons -0.1 0.1)
     (cons (* -1 QC-radius ticker-len) (* QC-radius ticker-len))))

QuiZi = \markup \center-column {
  %% Score snippets
  \combine \move-markup \GDur #outer-radius #30
  \combine \move-markup \DDur #outer-radius #60
  \combine \move-markup \ADur #outer-radius #90
  \combine \move-markup \EDur #outer-radius #120
  \combine \move-markup \HDur #outer-radius #150
  \combine \move-markup-x \FisDur #outer-radius #180 #0.3
  \combine \move-markup-x \GesDur #outer-radius #0 #-0.3
  \combine \move-markup \DesDur #outer-radius #210
  \combine \move-markup \AsDur #outer-radius #240
  \combine \move-markup \EsDur #outer-radius #270
  \combine \move-markup \BDur #outer-radius #300
  \combine \move-markup \FDur #outer-radius #330
  %% ticker lines
  \combine \stencil \ticker-line
  \combine \stencil #(st-rot ticker-line 30)
  \combine \stencil #(st-rot ticker-line 60)
  \combine \stencil #(st-rot ticker-line 90)
  \combine \stencil #(st-rot ticker-line 120)
  \combine \stencil #(st-rot ticker-line 150)
  %% whiten the interior of the circle
  \with-color #white
  \combine \draw-circle #(/ QC-radius ticker-len) #0 ##t
  %% add major letters in blue
  \with-color #(x11-color 'darkred)
  \abs-fontsize #22 \bold
  \combine
    \move-markup
    \with-color  #(x11-color 'darkgreen) \circle
    \with-color #(x11-color 'darkred) "C" #Dur-radius #0
  \combine \move-markup "G" #Dur-radius #30
  \combine \move-markup "D" #Dur-radius #60
  \combine \move-markup "A" #Dur-radius #90
  \combine \move-markup "E" #Dur-radius #120
  \combine \move-markup \concat {
    "B" \with-color #(x11-color 'darkgreen) "/C♭" } #Dur-radius #150
  \combine \move-markup \concat {
    \with-color #(x11-color 'darkgreen) "G♭" "/F♯" } #Dur-radius #180
  \combine \move-markup \concat {
    \with-color #(x11-color 'darkgreen) "D♭" "/C♯" } #Dur-radius #210
  \with-color #(x11-color 'darkgreen)
  \combine \move-markup "A♭" #Dur-radius #240
  \combine \move-markup "E♭" #Dur-radius #270
  \combine \move-markup "B♭" #Dur-radius #300
  \combine \move-markup "F" #Dur-radius #330
  \with-color #(x11-color 'indianred)
  \combine \move-markup
    \with-color #darkblue \circle \with-color #(x11-color 'indianred) "a" #moll-radius #0
  \combine \move-markup "e" #moll-radius #30
  \combine \move-markup "b" #moll-radius #60
  \combine \move-markup "f♯" #moll-radius #90
  \combine \move-markup "c♯" #moll-radius #120
  \combine \move-markup \concat {
    "g♯" \with-color #(x11-color 'forestgreen) "/a♭" } #moll-radius #150
  \combine \move-markup \concat {
    \with-color #(x11-color 'forestgreen) "e♭" "/d♯" } #moll-radius #180
  \combine \move-markup \concat {
    \with-color #(x11-color 'forestgreen) "b♭" "/a♯" } #moll-radius #210
  \with-color #(x11-color 'forestgreen)
  \combine \move-markup "f" #moll-radius #240
  \combine \move-markup "c" #moll-radius #270
  \combine \move-markup "g" #moll-radius #300
  \combine \move-markup "d" #moll-radius #330
  \abs-fontsize #16
  \with-color #black
  \combine \move-markup "Major / Dur" #outer-radius #0
  \with-color #black
  \combine \move-markup "Minor / Moll" #(* moll-radius 0.6) #0
  \with-color #black
  \draw-circle #QC-radius #0.5 ##f
}

\markup \center-column {
  \fill-line \abs-fontsize #18 \bold \italic {
    "Circle of fifths"
  }
  \null\null\null
}

textflat = \markup { \hspace #-0.3 \raise #0.4 \abs-fontsize #9 \flat \hspace #-0.5 }
textsharp = \markup { \hspace #-0.4 \raise #0.7 \abs-fontsize #8 \sharp \hspace #-0.1 }

\markup \column {
  \justify \abs-fontsize #11 {
     In music theory, the \italic { circle of fifths } is a way of organizing the 12 chromatic
     pitches as a sequence of perfect fifths.
     (This is strictly true in the standard 12-tone equal temperament system — using a different
     system requires one interval of diminished sixth to be treated as a fifth).

     If C is chosen as a starting point, the sequence is:
     C, G, D, A, E, B (=C\textflat) or H in german,
     F\textsharp (=G\textflat), C\textsharp (=D\textflat), A\textflat, E\textflat, B\textflat, F.
     Continuing the pattern from F returns the sequence to its starting point of C.
     This order places the most closely related key signatures adjacent to one another.
     It can be illustrated in the form of a circle.
  }
  \null\null\null
}

\markup \move-and-scale \QuiZi #0.8 #11

\markup \column {
  \null\null
  \justify \abs-fontsize #11 {
    The \italic { Inventions and Sinfonias, } BWV 772–801,
    % also known as the \italic { Two- and Three-Part Inventions, }
    are both arranged in order of ascending key, each group covering eight major and seven minor keys:
  }
  \null\null
}

\markup \column \abs-fontsize #10 \translate #'(4 . 0) {
  \line { "C Major and c Minor" }
  \line { "D Major and d Minor" }
  \line { "E" \textflat " Major, E Major, and e Minor" }
  \line { "F Major and f Minor" }
  \line { "G Major and g Minor" }
  \line { "A Major and a Minor" }
  \line { "B" \textflat " Major and b Minor" }
  \null\null
}

\language "nederlands"
