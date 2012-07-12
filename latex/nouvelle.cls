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
% \documentclass{nouvelle}
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
\ProvidesClass{nouvelle}[2007/07/01 v0.5 Package facilitant la création
d'une présentation adaptée à une nouvelle ou à un roman]

\LoadClass[10pt]{article}

% Format du papier / décommenter selon ce qu'on veut en sortie
\RequirePackage[a4paper, top=1in, left=1in, bottom=1in, right=0.75in]{geometry}
%\RequirePackage[a5paper, top=1cm, left=1cm, bottom=1cm, right=1cm]{geometry}
\RequirePackage{global/texte}
