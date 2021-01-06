import { Controller } from "stimulus";

export default class extends Controller {
   static targets = [ "backend_languages", "front_languages", "ui_ux_languages", "backend_button", "front_button", "ui_ux_button" ]

   backend() {
     this.backend_buttonTarget.classList.toggle('bg-red-500')
     this.backend_buttonTarget.classList.add('focus:outline-none')
     this.backend_buttonTarget.classList.toggle('text-white')
     this.backend_languagesTarget.classList.toggle('hidden')
   }

   frontend() {
     this.front_buttonTarget.classList.toggle('bg-red-500')
     this.front_buttonTarget.classList.add('focus:outline-none')
     this.front_buttonTarget.classList.toggle('text-white')
     this.front_languagesTarget.classList.toggle('hidden')
   }

   ui_ux() {
     this.ui_ux_buttonTarget.classList.toggle('bg-red-500')
     this.ui_ux_buttonTarget.classList.add('focus:outline-none')
     this.ui_ux_buttonTarget.classList.toggle('text-white')
     this.ui_ux_languagesTarget.classList.toggle('hidden')
   }
}
