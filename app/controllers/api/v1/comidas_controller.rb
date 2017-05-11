module Api
  module V1
    class ComidasController < ApplicationController
      def index
        comidas = Comida.all
        render json: comidas
      end
    end
  end
end
