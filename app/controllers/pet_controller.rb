class PetController < ApplicationController
  get '/pet' do
    Pet.all.to_json
  end

  post '/pet' do
    # p "hh=#{params}"

    Pet.create(creature_id: params[:creature_id]).to_json
  end

  delete '/pet/:id' do
    Pet.find_by_id(params[:id]).destroy
    # @pet.destroy
    # return { message: 'Removed' }.to_json
  end
end
