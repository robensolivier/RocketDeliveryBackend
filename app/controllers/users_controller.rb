class EntityTablePageController < ApplicationController
    def index
        @users = User.all
      end
end
