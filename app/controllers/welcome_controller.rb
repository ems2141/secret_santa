class WelcomeController < ApplicationController
  def index

    if request.xhr?
      people_array = params[:people].split(',')

      # assigned_list = SecretSantaGenerator.new(people_array).create_list
      assigned_list = SecretSantaGenerator.new(people_array).create_random_list

      assigned_list = view_context.render("santa_list", {pairs: assigned_list})
      render plain: assigned_list
    end
  end
end
