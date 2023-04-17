module Api

    class ProductsContoller < ActionController::Base


        def index
            data = JSON.parse(request.body.read)
            data = params[:restaurant] # how to declare a specific value
            puts 'DATA'
            puts data
            restaurant_id = data ['restaurant']
            puts 'restaurant_id'
            puts restaurant_id
            @products = Product.where(restaurant_id: data)

        
            render json: @products
            else
               render json: { error: 'invalide restaurant params' }, status: :unauthorized
            end
        end

    end

end
