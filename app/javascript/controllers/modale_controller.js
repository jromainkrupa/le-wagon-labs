import { Controller } from "stimulus";

export default class extends Controller {
   static targets = [ "modale", "background" ]


   close() {
    console.log("toto")
     this.modaleTarget.classList.add('hidden')
     this.backgroundTarget.classList.add('hidden')
   }
}
