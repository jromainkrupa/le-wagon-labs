import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "alert" ]

  toggle() {
    this.alertTarget.classList.toggle("hidden")
  }
}
