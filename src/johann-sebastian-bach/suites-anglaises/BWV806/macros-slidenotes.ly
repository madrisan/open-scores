%% http://lsr.di.unimi.it/LSR/Item?id=837
%% see also http://comments.gmane.org/gmane.comp.gnu.lilypond.general/63777

% by Edward Neeman

% Warnings may be suppressed using 'ly:expect-warning'
% Or use the here defined 'suppressWarning'-function, working since 2.20.

%   suppressWarning =
%   #(define-void-function (amount message)(number? string?)
%     (for-each
%       (lambda (warning)
%         (ly:expect-warning message))
%       (iota amount 1 1)))
%
%   \suppressWarning 2 "this Voice needs a \voiceXx or \shiftXx setting"

slideNotes = {
 \override NoteColumn.force-hshift = 0
 \override NoteHead.stencil = #(ly:make-stencil
   (list 'draw-line 0.15 -0.5 -0.4 2 0.4)
   '(-0.1 . 0.1) '(0.1 . 1))
 \override Stem.stencil = ##f
 \override Flag.stencil = ##f
}
