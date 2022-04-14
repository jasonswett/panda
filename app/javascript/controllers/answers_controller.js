import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  select(e) {
    e.preventDefault()
    e.target.style.backgroundColor = "#F00"
    this.correctAnswerElement().style.backgroundColor = "#0F0"

    let delay = 500;
    if (e.target === this.correctAnswerElement()) {
      delay = 50;
    }
    setTimeout(() => { window.location = e.target.href }, delay)
  }

  correctAnswerElement() {
    return document.getElementsByClassName("correct-answer")[0]
  }
}
