import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = [ "dropdownContent" ]
  connect() {
    this.dropdownContentTarget.hidden=true
    console.log("hello")
  }
  toggleDropdown(){
    if(this.dropdownContentTarget.hidden==true){
      this.openDropdown()
    } else {
      this.closeDropdown()
    }
  }
  openDropdown(){
    this.dropdownContentTarget.hidden=false
  }
  closeDropdown(){
    this.dropdownContentTarget.hidden=true
  }
}
