//= require jquery
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "./like_toggle"
import "./comments_toggle"

import $ from 'jquery';
global.$ = jQuery;

