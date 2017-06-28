module Api
  module V1
    class ComidasController < ApplicationController
      def index
        user = User.find_by(email_movil_app: params["email"])
        comidas = user.comidas
        render json: comidas
      end
    end
  end
end
