\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 15\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 17\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  top-margin = 15\mm
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "davide.madrisan@gmail.com"
  }
  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Arnold" }
        \null
        \line { \abs-fontsize #75 \bold "Schönberg" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #33 \bold "Sechs kleine Klavierstücke" }
        \null\null
        \line { \abs-fontsize #24 \italic "Six Little Piano Pieces" }
        \null\null\null
        \line { \abs-fontsize #30 \bold "Op. 19" }
        \null\null\null\null
        \line {
          \abs-fontsize #12 "With a preface (in italian) by Giancarlo Simonacci"
        }
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #12 "Based on the score published by Universal Edition, 1913"
        }
        \null\null
      }
    }
  }
}

\markup {
  \hspace #10
  \column {
    \null\null\null\null\null
    \override #'(line-width . 75) \justify {
      [...]
    }
    \override #'(line-width . 75) \justify {
      I strive for: complete liberation from all forms from all symbols of cohesion and of logic.
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      Thus: away with “motivic working out.”
      Away with harmony as cement or bricks of a building.
      Harmony is \italic expression and nothing else.
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      Then: Away with Pathos!
      Away with protracted ten-ton scores, from erected or constructed towers, rocks, and other
      massive claptrap.
      My music must be \italic brief. Concise!
      In two notes: not built, but “expressed”!!
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      And the result I whish for: no stylized and sterile protracted emotion.
      People are not like that: it is \italic impossible to a person to have one \italic one sensation
      at a time.
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      One has \italic thousands simultaneously. And these thousands can no more readily be added
      together than and apple and a pear. They do their own way.
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      And this variegation, this multifariousness, this \italic illogicality which our senses demonstrate,
      the illogicality presented by their interactions, set forth by some mounting rush of blood,
      by some reaction of the senses, or the nerves, this I should like to in my music.
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      It should be an expression of feeling, as our feelings, which bring us in contact with our
      subconscious, really are, and no false child of feelings and “conscious logic”.
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      Now I have made my confession and they can burn me.
      You will not number amongst those who burn me: that I know.
    }
    \hspace #0
    \override #'(line-width . 75) \justify {
      [...]
    }
    \null\null\null
    \override #'(line-width . 75) \justify \italic {
      "From a Schoenberg's letter to Ferruccio Busoni (August 13, 1909)"
    }
  }
}

\pageBreak

\markup {
  \fill-line {
    \center-column {
      \null
      \fill-line { \abs-fontsize #18 \bold "GIANCARLO SIMONACCI" }
      \null\null
      \fill-line { \abs-fontsize #18 \bold "Appunti e riflessioni pianistiche" }
      \null\null\null
    }
  }
}

\markup {
  \column {
    \wordwrap \abs-fontsize #11 {
      Nessuna considerazione estetica, nessuna analisi armonico-strutturale, nessuna valutazione storica.
      Solo semplicemente alcuni suggerimenti di approccio musicale e strumentale.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Si deve comunque sottolineare la straordinaria acquisizione timbrico-dinamica che scaturisce da una
      corretta realizzazione del contenuto tecnico-poetico di questa importante opera di Schoenberg.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Si ritiene altresì che l’op. 19 sia un ottimo punto di partenza per chi intenda iniziarsi ad una
      visione più “moderna” del gioco pianistico.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      La estrema concisione di tutta l’opera (poco più di 6 minuti di durata) è in netta contrapposizione
      con l’ampia densità della narrazione espressiva.
      Una sfida per l’interprete attento e consapevole che vuol trasmettere tutte le più sottili sfumature
      di colore indicate dall’autore.
    }
    \hspace #0
    \hspace #0

    \line \bold \abs-fontsize #13 { Primo brano: “Leicht zart” (Leggero, delicato) }
    \hspace #0

    \wordwrap \abs-fontsize #11 {
      E' probabilmente, sotto vari profili, il più impegnativo di tutti.
      Ci sono svariate indicazioni agogiche, elasticità di andamento, brevi frammenti densamente
      polifonici (va comunque sottolineato che tutta l’opera è caratterizzata da una scrittura
      prevalentemente polifonica) e soprattutto un susseguirsi di tasselli fraseologici che tuttavia
      non ostacolano la fluidità del decorso musicale.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Si prenda ad esempio il frammento che va dalla seconda metà della battuta 4 sino alla fine della
      battuta 6 [3], la polifonia è evidente, come è evidente lo spessore espressivo.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Ogni voce è connotata da sottili ma sensibili indicazioni di forchette che enunciano i
      vari crescendi e diminuendi.
      Non è propriamente semplice la oggettiva realizzazione di queste battute!
      Solo uno studio accurato delle singole voci consentirà il raggiungimento di un risultato ottimale.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Schoenberg non era pianista, quindi (anche se con prudenza) appare quasi legittimo tentare di
      dare una più verosimile elasticità al tessuto pianistico e non solo.
      Sempre in questo primo brano alla battuta 1 il DO bequadro (semiminima) alla mano destra è meglio
      affidarlo alla mano sinistra per consentire una maggiore sensibilità alla linea melodica [1].
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 2: sempre lo stesso DO, questa volta collocato alla mano sinistra (bicordo SOL bequadro / DO
      bequadro), è opportuno invece affidarlo alla mano destra per ottimizzare il piccolo legato fra i due
      bicordi della mano sinistra [2].
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 8: il disegno della mano destra (fluchtig – fugace) è di non facile realizzazione,
      quindi è bene coadiuvarlo con la mano sinistra [4].
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 10: il SOL bequadro affidato alla mano destra deve essere sostenuto dal pedale di
      risonanza, sull’ultima croma della stessa battuta il tasto va abbassato muto, sulla prima croma
      legata della battuta successiva va tolto il pedale di risonanza.
      Tutto questo per smorzare la risonanza precedente e favorire (seppure flebilmente) la percezione di
      quella forchetta in diminuendo posta inizialmente proprio sotto il SOL stesso [5].
    }
  }
}

\markup {
  \column {
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 13: il RE bequadro (ultima croma) alla mano destra è da affidare alla mano sinistra
      (se non ci sono problemi con la decima!) per non sporcare con il pedale di risonanza l’accordo
      nella sua totalità, in sostanza ciò consente una più netta percezione della successione
      RE bemolle – RE bequadro (mano destra) [6].
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 15: per mantenere (senza intoppi!) il SI bemolle della mano sinistra si consiglia una
      appropriata diteggiatura, tesa anche a coadiuvare il fraseggio [7].
    }
    \hspace #0
    \hspace #0
  }
}

\markup {
  \column {
    \line \bold \abs-fontsize #13 { Secondo brano: “Langsam” (Lento) }
    \hspace #0

    \wordwrap \abs-fontsize #11 {
      Il pulsare ritmico del bicordo SOL bequadro/SI bequadro affidato alla mano sinistra
      sarà opportuno mantenerlo alla stessa mano anche nelle tre battute finali [es. 8].
      Tutto ciò al fine di rendere omogeneo il peso sonoro e quindi la qualità timbrica di
      questo “ostinato”.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 6: l’inciso in terze sarà enunciato dalla mano destra [es. 9] e una volta
      espresso l’accordo conclusivo, che va sostenuto con il pedale di risonanza,
      abbassare il tasti muti, alzare il pedale e subito dopo riattivare la vibrazione con il
      pedale stesso.
      Questo consentirà l’attuazione del diminuendo richiesto [es. 10].
    }
    \hspace #0
    \hspace #0
  }
}

\markup {
  \column {
    \line \bold \abs-fontsize #13 { Terzo brano: “Sehr langsame” (Molto lento) }
    \hspace #0

    \wordwrap \abs-fontsize #11 {
      Il procedere quasi maestoso riecheggia un sapore arcaico di uno stravagante corale organistico.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Nulla da eccepire sul piano strumentale tranne nelle due ultime battute ove le crome staccate FA
      e LA bequadro della mano destra è preferibile che vengano entrambi suonate con il quinto dito
      [es. 11], mantenendo così una equabile fonicità.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      E’ molto chiara l’indicazione dell’autore riguardo le prime quattro battute
      \italic { “In den ersten 4 takten soll die rechte hand durchaus \dynamic{f},
      die linke durchaus \dynamic{pp} spielen“ }
      (Nelle prime 4 battute la mano destra deve suonare sempre \dynamic{f}, la sinistra \dynamic{pp}).
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Occorre anche far osservare in tutto il brano la ricca presenza di crescendi e
      diminuendi, di piccoli ma significativi staccati, di lievi accenti espressivi.
    }
    \hspace #0
    \hspace #0

    \line \bold \abs-fontsize #13 { Quarto brano: “Rasch, aber leicht” (Presto, ma leggero) }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Il disegno iniziale verrà affidato alla mano sinistra fino al LA bequadro (croma con il punto)
      della battuta 2.
      Di conseguenza il bicordo FA bequadro / SI bequadro della seconda battuta sarà affidato alla mano
      destra che si riapproprierà della linea melodica a partire dal DO diesis (biscroma) sempre nella
      battuta 2 [es. 12].
      Tale accorgimento offrirà maggiore plasticità al gesto pianistico eludendo la sovrapposizione
      della mano sinistra sulla destra.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 4: l’accordo a metà battuta è necessario dividerlo fra le due mani,
      ottenendo così una presa di maggiore morbidezza [es. 13].
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 6: si raccomanda la massima attenzione ai differenti livelli dinamici [es. 14].
    }
    %\hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 9: il RE bequadro legato andrà al MI bequadro sempre con la mano destra a
      conclusione della linea melodica (e di uno stesso peso sonoro) che parte dalla battuta 6 [es. 15].
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Per le ultime quattro battute, vista la generosa esplosione di sonorità, si
      suggeriscono la divisione fra le mani e la diteggiatura indicate nell' [es. 16].
    }
  }
}

\pageBreak

\markup {
  \column {
    \line \bold \abs-fontsize #13 { Quinto brano: “Etwas rasch” (Un poco presto) }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Pochissimo da dire! Solo viene indicata una diteggiatura univoca alla mano sinistra
      per i quattro bicordi delle battute 9 e 10 [es. 17].
      E’ così garantito lo staccato previsto!
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Può essere utile concepire il brano come un piccolo valzer?
    }
    \hspace #0
  }
}

\markup {
  \column {
    \line \bold \abs-fontsize #13 { Sesto brano: “Sehr langsam” (Molto lento) }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 3: occorre fare molta attenzione all’attacco dinamico differenziato dei due
      RE diesis posti a un’ottava di distanza l’uno dall’altro [mano destra \dynamic{p} – mano sinistra
      \dynamic{pppp}!!!!].
      Preferibilmente emettere l’inudibile RE diesis della mano sinistra con il quarto dito!
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Solo in questo brano e nel quarto Schoenberg ha indicato un preciso intervento del pedale
      di risonanza. Questo naturalmente, come si è visto, non esclude l’uso (intelligente) dei tre pedali
      in tutta l’opera. Proprio in quest’ultimo brano è possibile utilizzate il pedale tonale.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 3 e 4: il sostenere l’accordo della mano sinistra per tutta la sua durata con il
      pedale tonale consentirà la precisa attuazione della pausa relativa alla linea affidata
      sempre alla stessa mano sinistra nella battuta 4 (ma anche alla mano destra!)
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Il rovescio della medaglia è che in questo caso non si potrà coadiuvare la vibrazione
      dell’accordo affidato alla mano destra (già nella battuta 2) con il pedale di risonanza,
      perché andrebbe ad inficiare il risultato sonoro ottenuto con il pedale tonale.
      Resta solo da scegliere fra la realizzazione più “rispettosa” del testo, ma con una sonorità
      più asciutta (quindi con l’uso del pedale tonale) e una punta in meno di rigore, ma con una
      sonorità più vibrante (con il pedale di risonanza).
      Lo stesso quasi identico dubbio può sollevarsi nell’ultima battuta, perché l’uso del
      solo pedale tonale sull’accordo (sempre lo stesso!) della mano sinistra permetterà il
      non accavallamento dei due ultimi suoni (SI bemolle – LA bemolle).
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 7: appare opportuno portare il RE al DO diesis con la mano destra e
      proseguire sempre con la mano destra.
      L’uso della mano sinistra, a partire dal DO diesis, destabilizza la tensione iniziale
      dell’arco espressivo del frammento melodico.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Battuta 8: nell’accordo della mano destra, per consentire il legato fra il MI bequadro
      e il MI bemolle, prendere il bicordo MI bequadro / RE bequadro con il solo pollice che
      spostandosi lateralmente (lasciando il MI bequadro ma mantenendo il RE!) favorirà
      agevolmente l’entrata del MI bemolle con il secondo dito.
    }
    \hspace #0
    \wordwrap \abs-fontsize #11 {
      Sarà opportuno per tutte le indicazioni suggerite fornire l’intera immagine del sesto brano.
    }

    \hspace #0
    \hspace #0

    \wordwrap \abs-fontsize #11 {
      A conclusione di questo breve percorso vorrei fare una lieve disgressione (ma credo
      pertinente!) raccontando che diversi anni fa nel conservatorio dove insegnavo attuai
      un corso sulla Seconda Scuola di Vienna, quindi su Schoenberg – Webern – Berg.
      Fra i vari allievi partecipanti, pianisti, altri strumentisti, cantanti, c’erano anche
      alcuni allievi compositori.
      Proprio a quest’ultimi chiesi di strumentare tutta l’op. 19 di Schoenberg.
      Il risultato fu molto entusiasmante per tutti poiché i giovani compositori si
      produssero, ognuno con la propria fantasia e personalità, privilegiando proprio
      l’aspetto timbrico dell’opera di Schoenberg, con impasti coloristici-strumentali
      piuttosto suggestivi.
    }
    \hspace #0

    \wordwrap \abs-fontsize #11 {
      Sono convinto che questo “piccolo” gioiello del Maestro viennese ha ancora molti
      stimoli da generare e che il seme gettato in quel lontano 1911 non ha quindi finito di
      produrre frutti.
    }
  }
}

\markup \abs-fontsize #11 { \column { \null\null \fill-line { "" "Roma 6 e 7 dicembre 2020" } } }

\pageBreak

\include "parts/arnold-schoenberg-op-19-1.ly"
\pageBreak
\include "parts/arnold-schoenberg-op-19-2.ly"