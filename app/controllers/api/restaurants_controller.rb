module Api
    class RestaurantsController < ApplicationController

        def index
          # Fetch restaurants based on parameters
          rating = params[:rating]
          price_range = params[:price_range]
          
          # Validate rating parameter
          if rating.present? && !valid_rating?(rating)
            render json: { error: "Invalid rating or price range" }, status: :unprocessable_entity
            return
          end
          
          # Validate price_range parameter
          if price_range.present? && !valid_price_range?(price_range)
            render json: { error: "Invalid rating or price range" }, status: :unprocessable_entity
            return
          end
      
          # Fetch restaurants based on parameters
          if rating.present? && price_range.present?
            @restaurants = Restaurant.where(rating: rating, price_range: price_range)
          elsif rating.present?
            @restaurants = Restaurant.where(rating: rating)
          elsif price_range.present?
            @restaurants = Restaurant.where(price_range: price_range)
          else
            @restaurants = Restaurant.all
          end
      
          render json: @restaurants, only: [:id, :name, :price_range, :rating]
        end
      
        private
      
        def valid_rating?(rating)
          # Add your validation logic for rating parameter
          # Return true if rating is valid, false otherwise
          # Example: return rating.to_i.between?(1, 5)
          true
        end
      
        def valid_price_range?(price_range)
          # Add your validation logic for price_range parameter
          # Return true if price_range is valid, false otherwise
          # Example: return price_range.to_i.between?(1, 4)
          true
        end
      
      end
end