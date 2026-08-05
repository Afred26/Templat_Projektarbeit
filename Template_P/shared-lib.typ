#let is-in-dict(dict-type, state, element) = {
  context {
    let list = state.get()
    if list == none or element not in list {
      panic(element + " is not a key in the " + dict-type + " dictionary.")
    }
  }
}

#let display-link(dict-type, state, element, text) = {
  is-in-dict(dict-type, state, element)
  let lbl = label(dict-type + "-" + element)
  context {
    if query(lbl).len() > 0 {
      link(lbl, text)
    } else {
      text
    }
  }
}

#let display(dict-type, state, element, text, link: true) = {
  if link {
    display-link(dict-type, state, element, text)
  } else {
    text
  }
}
