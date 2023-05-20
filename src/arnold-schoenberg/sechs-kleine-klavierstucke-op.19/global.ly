% Draw a box round the bar number(s)
\override Score.BarNumber.stencil
  = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)

#(define-markup-command (annotation layout props text) (markup?)
  "Draw an annotation (a double box around text)."
  (interpret-markup layout props
    (markup #:override '(box-padding . 0.2) #:box
            #:override '(box-padding . 0.3) #:box #:normal-text #:tiny text )))
