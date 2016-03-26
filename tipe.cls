\ProvidesClass{formulaire}
\NeedsTeXFormat{LaTeX2e}[1994/06/01]

% Classe globale
\LoadClass[12pt,
           a4paper,
          ] {article}

% Gestion des caractères
\RequirePackage[utf8]            {inputenc}
\RequirePackage[T1]              {fontenc}
\renewcommand{\sfdefault}{phv}
\RequirePackage[francais]        {babel}
\RequirePackage[a4paper,
                includefoot,
                left=1.5cm,
                top=1.5cm,
                bottom=1.5cm,
                right=5cm]       {geometry}
\RequirePackage                  {titlesec}

% Mode mathématique
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathrsfs}
\RequirePackage{stmaryrd} % Pour la commande \seg

% Fonctionnalités supplémentaires
\RequirePackage                     {fancybox}
\RequirePackage                     {graphicx}
\RequirePackage                     {float}
\RequirePackage                     {pgf, tikz}
\RequirePackage[french,
                textwidth=4.5cm,
                textsize=small,
                colorinlistoftodos] {todonotes}

% Fonctionnalités additionnelles
\RequirePackage{tabularx}
\RequirePackage{hyperref} % Formatage du pdf
\hypersetup{
    colorlinks    = true,
    breaklinks    = true,
    urlcolor      = blue,
    linkcolor     = red,
    bookmarksopen = true
}

% Nouvelle commandes
% Équivalence
\newcommand{\equival}{\Leftrightarrow}

% Intervalle d'entiers
\newcommand{\seg}[2]{\llbracket #1, #2 \rrbracket}

% Amélioration du phi
\renewcommand{\phi}{\varphi}

% Sinus cardinal
\newcommand{\sinc}{\text{sinc}}

% Satisfiabilité
\newcommand{\sat}{\text{SAT}}
\newcommand{\unsat}{\text{UNSAT}}
\newcommand{\cosat}{\overset{\sat}{\sim}}

% TODOs
% Code couleur :
%  - bleu   : il faut démontrer quelque chose
%  - rouge  : il y a un problème lié à LaTeX à corriger (mise en page ...)
%  - vert   : idées de recherche
%  - violet : sources à ajouter/cherche
%  - orange : tout ce qui n'entre dans aucune catégorie
\newcommand{\demo}[1]{\todo[color=blue!40]{#1}}
\newcommand{\tdoc}[1]{\todo[color=red]{#1}}
\newcommand{\idee}[1]{\todo[color=green]{#1}}
\newcommand{\tref}[1]{\todo[color=purple!40]{#1}}

