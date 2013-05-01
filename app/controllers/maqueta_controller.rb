class MaquetaController < ApplicationController
  respond_to :html, :xml, :json
  def index
    @h1 = 'hola mundo'
    respond_with(@h1)
  end
end
