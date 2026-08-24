#import "@local/templat-projektarbeit:0.1.21": *
#import "../Template/Zusatz/acronyms.typ": acronyms

#show: supercharged-dhbw.with(
  title: "Titel der Projektarbeit",
  authors: (
    (name: "Max Mustermann", student-id: "1234567", course: "MUST24XX1", course-of-studies: "Studiengang", company: (
      (name: "Musterunternehmen GmbH", post-code: "12345", city: "Musterstadt")
    )),
  ),
  acronyms: acronyms,
  at-university: false, // if true the company name on the title page and the confidentiality statement are hidden
  bibliography: bibliography("../Template/Zusatz/zotero.bib"),
  date: datetime.today(),
  language: "de", // en, de
  ki-anmerkung-content: include "../Template/Anmerkung KI.typ",
  // Vorwort einfügen (optional):
  foreword: include "../Template/Texte/Vorwort.typ",
  supervisor: (company: "Max Musterbetreuer"),
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Musterstadt",
  university-short: "DHBW",
  // Schriftart anpassen (z.B. "New Computer Modern"):
  font: "Liberation Serif",
  // Firmenlogo einfügen (Datei z.B. in assets/ ablegen):
  // logo-right: image("assets/firmenlogo.svg"),
  // for more options check the package documentation (https://typst.app/universe/package/supercharged-dhbw)
)


#include "../Template/Texte/lorem_ipsum.typ"

= Hallo
== hallo2
== *hallo3*
