#import "@local/templat-projektarbeit:0.1.9": KI_TITLE, KI_CAPTION, KI_COL_TOOL, KI_COL_DESC

#context {
  let lang = text.lang

  v(2em)
  text(size: 20pt, weight: "bold", KI_TITLE.at(lang))
  v(1em)
  figure(
    caption: KI_CAPTION.at(lang),
    table(
      columns: (1fr, 4fr),
      inset: 10pt,
      align: horizon,
      fill: (_, y) => if y == 0 { luma(200) } else { white },

      // Überschriften / Headers
      text(KI_COL_TOOL.at(lang)), text(KI_COL_DESC.at(lang)),

      // Einträge / Entries
      text("Copilot"), text("Nutzung für Korrektur- und Formulierungshilfe"),
      text("Copilot"), text("Durchsuchen und Zusammenfassen von (Firmen-)Dokumenten"),
      text("Gemini"),  text("Recherche von allgemeinen Informationen"),
      text("Google Scholar Labs"), text("Recherche von Fachtexten"),
    )
  )<KI>
}
