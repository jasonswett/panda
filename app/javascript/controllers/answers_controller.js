import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize() {
    document.addEventListener("keydown", (e) => {
      if (Number(e.key) !== Number(e.key)) {
        return
      }

      let index = Number(e.key) - 1

      if (index < 0 || index > 2) {
        return
      }

      this.select(document.getElementsByClassName("answer-button")[index])
    })
  }

  handleClick(e) {
    e.preventDefault()
    this.select(e.target)
  }

  select(selectedElement) {
    selectedElement.style.backgroundColor = "#F00"
    this.correctAnswerElement().style.backgroundColor = "#0F0"
    this.advance(selectedElement)
  }

  correctAnswerElement() {
    return document.getElementsByClassName("correct-answer")[0]
  }

  advance(selectedElement) {
    let delay = 500

    if (selectedElement === this.correctAnswerElement()) {
      delay = 50
    }

    setTimeout(() => { window.location = selectedElement.href }, delay)
  }
}
