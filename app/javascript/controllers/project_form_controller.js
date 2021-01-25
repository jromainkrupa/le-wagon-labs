import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "languages_panel", "arrow_opened", "arrow_closed", "roles_number"]

  toggle() {
    this.languages_panelTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }

  decrementer() {
    if (this.roles_numberTarget.value > 0) {
      this.roles_numberTarget.value -= 1;
    };
  }

  incrementer() {
    if (this.roles_numberTarget.value < 10) {
      this.roles_numberTarget.value = parseInt(this.roles_numberTarget.value) + 1;
    };
  }
}
