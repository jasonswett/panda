import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  select(e) {
    e.preventDefault()
    e.target.style.backgroundColor = "#F00"
    this.correctAnswerElement().style.backgroundColor = "#0F0"
    this.advance(e.target)
  }

  correctAnswerElement() {
    return document.getElementsByClassName("correct-answer")[0]
  }

  advance(clickedElement) {
    let delay = 500

    if (clickedElement === this.correctAnswerElement()) {
      delay = 50
    }

    setTimeout(() => { window.location = clickedElement.href }, delay)
  }
}
