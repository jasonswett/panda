import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  select(e) {
    e.preventDefault()
    e.target.style.backgroundColor = "#F00"
    document.getElementsByClassName("correct-answer")[0].style.backgroundColor = "#0F0"
    setTimeout(() => { window.location = e.target.href }, 500)
  }
}
