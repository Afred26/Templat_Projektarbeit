#import "lib.typ": *
#import "../Template/Zusatz/acronyms.typ": acronyms

#show: supercharged-dhbw.with(
  title: "Titel der Projektarbeit",
  authors: (
    (name: "Max Mustermann", student-id: "1234567", course: "MUST24XX1", course-of-studies: "Studiengang", company: (
      (name: "Musterunternehmen GmbH", post-code: "12345", city: "Musterstadt")
    )),
  ),
  acronyms: acronyms, // displays the acronyms defined in the acronyms dictionary
  at-university: false, // if true the company name on the title page and the confidentiality statement are hidden
  bibliography: bibliography("../Template/Zusatz/zotero.bib"),
  date: datetime.today(),
  language: "de", // en, de
  supervisor: (company: "Max Musterbetreuer"),
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Musterstadt",
  university-short: "DHBW",
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)

// Einleitung
#include "../Template/Text/Einleitung/0 Vorwort.typ"

#include "../Template/Text/Einleitung/1 Überblick Praxisphase.typ"

// Hauptteil
#include "../Template/Text/Hauptteil/0.typ"


// 
#include "../Template/Text/Schluss/0.typ"