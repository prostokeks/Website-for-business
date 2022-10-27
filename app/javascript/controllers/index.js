import { application } from "./application"

import DropdownController from "./dropdown_controller.js"
application.register("dropdown", DropdownController)

import HelloController from "./hello_controller.js"
application.register("hello", HelloController)

import TurboModalController from "./turbo_modal_controller.js"
application.register("turbo-modal", TurboModalController)
