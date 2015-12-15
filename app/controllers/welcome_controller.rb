class WelcomeController < ApplicationController
  def index

    if request.xhr?
      people_array = params[:people].split(',')

      assigned_list = SecretSantaGenerator.new(people_array).create_list

      render plain: assigned_list
    end
  end
end
