latex-misc
==========

Quelques fichiers LaTeX éventuellement utiles pour mettre en page des
nouvelles ou des romans

Attention : la compilation nécessite PDFLaTeX.

= Utilisation =

L'utilisation se fait normalement sans difficulté : 

    \documentclass{livre}
    
ou
    \documentclass{nouvelle}

Avec les classiques `\author`, `\title`, etc.

Quelques commandes ont été ajoutées : 

* `\separateur`  : sépare deux paragraphes avec des `*****` centrés.

* `\extrait[auteur]{citation}` : citation un peu jolie.

* `\flash{texte}` : affiche un texte entre parenthèses pour montrer un
    flashback, la pensée d'un personnage, etc.

* `\dire{}` : pour les dialogues ; permet de gérer correctement
    les guillemets français sans trop se compliquer. 
    
* `\expr{}` : ici, identique à `\dire{}`, mais utilisé pour les
    expressions et non pour les dialogues. Il y a deux commandes
    différentes pour le cas où vous souhaiteriez changer la mise en
    page des dialogue mais continuer à garder des guillemets français
    ailleurs, ou si à l'invers vous préférez n'avoir des guillemets
    français que pour les dialogues et des ""pour le reste.


