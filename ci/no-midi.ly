% Settings file loaded only by the GitHub CI, via
%   lilypond -dinclude-settings=ci/no-midi.ly
% It turns the MIDI writer into a no-op, so the \midi blocks of the scores
% do not produce any .midi file.  Local builds are not affected.
#(module-set! (resolve-module '(lily)) 'ly:performance-write (lambda args #f))
