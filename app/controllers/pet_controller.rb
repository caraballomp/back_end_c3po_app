class PetController < ApplicationController
  get '/pet' do
    Pet.all.to_json
  end

  post '/pet' do
    # p "hh=#{params}"

    Pet.create(creature_id: params[:creature_id]).to_json
  end

  delete '/pet' do
    @pet = Pet.find_by_id(params[:id])
    @pet.delete
    return { message: 'Removed' }.to_json
  end
end
