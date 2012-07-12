%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Classe utilisée pour des nouvelles, romans, etc. Basiquement, elle
% fournit une page de garde un peu plus jolie que le \maketitle de
% base, et ajoute la commande \separateur qui permet de séparer deux
% paragraphes par des *******.
%
% Copyright (C) Élisabeth Henry <liz.henry@ouvaton.org>
%
% Vous pouvez utiliser, modifier et redistribuer ce fichier sans
% aucune restriction.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Utilisation
%
% L'utilisation se fait normalement sans difficulté : 
%
% \documentclass{livre}
%
% Avec les classiques \author, \title, etc.
%
% Quelques commandes ont été ajoutées : 
%
% \separateur : sépare deux paragraphes avec des *****
% \extrait[auteur]{citation} : citation un peu jolie.
% \flash{texte} : affiche un texte entre parenthèses pour montrer un
%     flashback, la pensée d'un personnage, etc.
% \dire{} : pour faire parler les persos. Évite ainsi d'avoir à tout
%     changer à la main si on doit changer << en \og, par exemple ;)
% \expr{} : pour les expressions. Même principe que ci-dessus. Par
%     défaut met l'expression en «».
%
% Attention : la compilation nécessite PDFLaTeX.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Bibliothèques
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1998/12/01]
\ProvidesClass{livre}[2007/07/01 v0.5 Package facilitant la création
d'une présentation adaptée à une nouvelle ou à un roman]

\LoadClass[11pt]{book}

% Format du papier (décommenter la ligne selon le format qu'on veut)
\RequirePackage[a4paper, top=2cm, left=1.5cm, bottom=1.5cm,right=1.5cm]{geometry} % A4, recto
%\RequirePackage[a4paper, top=2cm, left=2.5cm,bottom=1.5cm,right=1.5cm]{geometry} %A4, recto-verso
%\RequirePackage[a5paper, top=2cm, left=2.5cm,bottom=1.5cm,right=1.5cm]{geometry} % -> format A5
%\RequirePackage[a6paper, top=1.5cm, left=1.5cm,bottom=1.5cm,right=1.5cm]{geometry} % -> format A6

\RequirePackage{global/texte}

% Titre
\renewcommand{\maketitle}{
  \thispagestyle{empty}
  \vspace*{\stretch{1}}

  \begin{center}
    {\Huge \@title   \\[5mm]}
  \end{center}
  \vspace*{\stretch{2}}

  \newpage
  \thispagestyle{empty}
  
  \pagebreak
  \newpage
  
  \thispagestyle{empty}
  \chapter*{}
  \vspace*{\stretch{1}}
  \begin{center}
%    {\Huge \@author \\[5mm]}
    {\Large \theserietitle}
    {\Huge \@title   \\[5mm]}
%    {\huge \today   \\[5mm]}    
  \end{center}
  
%  \HRule

  \vspace*{\stretch{2}}

\begin{center}
{\large \@author}
\end{center}

                                
 \vspace*{\stretch{1}}

 \vspace*{\stretch{1}}
}
