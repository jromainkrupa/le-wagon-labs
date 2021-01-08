import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "backend_languages", "frontend_languages", "ui_ux_languages", "arrow_opened", "arrow_closed" ]

  backend() {
    this.backend_languagesTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }

  frontend() {
    this.frontend_languagesTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }

  ui_ux() {
    this.ui_ux_languagesTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }
}
