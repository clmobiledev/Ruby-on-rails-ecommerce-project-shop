class ContactsController < ApplicationController
  def index
    @about = About.first
  end
end
