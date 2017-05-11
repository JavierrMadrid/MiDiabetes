class AdminController < ApplicationController
http_basic_authenticate_with name: "midiabetes", password: "secret"
 end
