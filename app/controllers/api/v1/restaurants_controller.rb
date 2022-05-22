module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        restaurants = Restaurant.all

        # 下記記述でJSON形式でデータを返す
        render json: {
          restaurants: restaurants
        }, status: :ok
      end
    end
  end
end