import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "backend_languages", "frontend_languages", "ui_ux_languages", "arrow_opened", "arrow_closed", "frontend_roles", "backend_roles", "ui_ux_roles"]

  backend() {
    this.backend_languagesTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }

  frontend_menu() {
    this.frontend_languagesTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }

  ui_ux() {
    this.ui_ux_languagesTarget.classList.toggle("hidden")
    this.arrow_closedTarget.classList.toggle("hidden")
    this.arrow_openedTarget.classList.toggle("hidden")
  }

  frontend_decrementer() {
    if (this.frontend_rolesTarget.value > 0) {
      this.frontend_rolesTarget.value -= 1;
    };
  }

  frontend_incrementer() {
    if (this.frontend_rolesTarget.value < 10) {
      this.frontend_rolesTarget.value = parseInt(this.frontend_rolesTarget.value) + 1;
    };
  }

  backend_decrementer() {
    if (this.backend_rolesTarget.value > 0) {
      this.backend_rolesTarget.value -= 1;
    };
  }

  backend_incrementer() {
    if (this.backend_rolesTarget.value < 10) {
      this.backend_rolesTarget.value = parseInt(this.backend_rolesTarget.value) + 1;
    };
  }

  ui_ux_decrementer() {
    if (this.ui_ux_rolesTarget.value > 0) {
      this.ui_ux_rolesTarget.value -= 1;
    };
  }

  ui_ux_incrementer() {
    if (this.ui_ux_rolesTarget.value < 10) {
      this.ui_ux_rolesTarget.value = parseInt(this.ui_ux_rolesTarget.value) + 1;
    };
  }
}
