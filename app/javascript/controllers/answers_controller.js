import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  select(e) {
    e.preventDefault()
    e.target.style.backgroundColor = "#F00"
    this.correctAnswerElement().style.backgroundColor = "#0F0"
    setTimeout(() => { window.location = e.target.href }, 500)
  }

  correctAnswerElement() {
    return document.getElementsByClassName("correct-answer")[0]
  }
}
