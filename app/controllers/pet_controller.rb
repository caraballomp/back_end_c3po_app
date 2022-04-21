class PetController < ApplicationController
  get '/pet' do
    p "user=#{@user}"
    Pet.where(user_id: @user.id).to_json
  end

  post '/pet' do
    p "hh=#{params}"

    Pet.create(user_id: @user.id, creature_id: params[:creature_id]).to_json
  end

  delete '/pet' do
    @pet = Pet.find_by_id(params[:id])
    @pet.delete
    return { message: 'Removed' }.to_json
  end
end
