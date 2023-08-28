// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import ujs from "@rails/ujs";
import turbolinks from "turbolinks";
import * as activeStorage from "@rails/activestorage";

ujs.start();
turbolinks.start();
activeStorage.start();

import "jquery";
import "@popperjs/core";
import "bootstrap";
import "./fractalsoft/browser_info";
import "./fractalsoft/cieszyn";
import "./fractalsoft/contact_forms";
