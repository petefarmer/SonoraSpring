% Sonora Spring
\version "2.18.2"
\include "definitions_No-Tab.ly"
\include "AGuitar.ly"
\include "AChordNames.ly"
\include "BChordNames.ly"
%\include "ARhythmGuitar.ly"
\include "ABass.ly"

\book {
 \header {
  title = "Sonora Spring"
  subtitle = "DRAFT" 
  subsubtitle = "v0.1" 
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score {
\unfoldRepeats
\new StaffGroup <<
   \new ChordNames {
   \override ChordName #'font-size = #-1
    \AChordNames
    \BChordNames
   }
  \new Staff \with {
   instrumentName = \markup {\line {"Guitar"}}
   \clef "treble_8"
  }{
  \key e \minor  
  \tempo 4 = 130
  \time 4/4   
  \AGuitar
  }
  \new Staff \with {
       instrumentName = \markup {\line {"Bass"}}
       \clef "bass"
  }{
    \key e \minor
    \ABass
  }
    
 >> % StaffGroup
 \layout {
  \context {
   \Score {
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
   }
  }
  \context { \TabStaff \remove Clef_engraver }
 }
\midi {\tempo 4 = 130}
} % score
} % book
