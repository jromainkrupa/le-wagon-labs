import { Controller } from "stimulus";

export default class extends Controller {
   static targets = [ "toggleable", "invisible" ]


   toggle() {
     this.toggleableTarget.classList.toggle('hidden')
     this.invisibleTarget.classList.toggle('hidden')
   }
}
