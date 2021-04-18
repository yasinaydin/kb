# TeX/LaTeX

## Font formatting
```tex
% Bold
\textbf{This sentence is bold.}
% Italic
\textit{This sentence is in italics.}
```

## Footnote with URL
```tex
\footnote{\url{http://test.com}}
```

## Glossary
To define, in glossaries.tex file:
```tex
\newglossaryentry{gdpr} {
    name={GDPR},
    description={General Data Protection Regulation}
}
```
To use, in content file:
```tex
\gls{gdpr}
```

## Citations
BibTeX entry types: <https://www.bibtex.com/e/entry-types/>

To use, in content file:
```tex
some text\cite{%CITENAME%}
```
