fontSize = #-3
\override StaffSymbol.staff-space = #(magstep -3)
\override StaffSymbol.thickness = #(magstep -3)
\override VerticalAxisGroup.staff-staff-spacing.minimum-distance = 2
%\remove "Instrument_name_engraver"
\remove "Time_signature_engraver"  
\RemoveAllEmptyStaves
\override Accidental.color    = #(x11-color 'grey35)
\override BarLine.color       = #(x11-color 'grey35)
\override Beam.color          = #(x11-color 'grey35)
\override Clef.color          = #(x11-color 'grey35)
\override Flag.color          = #(x11-color 'grey35)
\override KeySignature.color  = #(x11-color 'grey35)
\override NoteHead.color      = #(x11-color 'grey35)
\override OttavaBracket.color = #(x11-color 'grey35)
\override Rest.color          = #(x11-color 'grey35)
\override Script.color        = #(x11-color 'grey35)
\override Slur.color          = #(x11-color 'grey35)
\override Stem.color          = #(x11-color 'grey35)
\override StemTremolo.color   = #(x11-color 'grey35)
\override TextScript.color    = #(x11-color 'grey35)
\override Tie.color           = #(x11-color 'grey35)
\override TimeSignature.color = #(x11-color 'grey35)
