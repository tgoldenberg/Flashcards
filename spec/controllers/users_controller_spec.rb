require 'rails_helper'

RSpec.describe UsersController, :type => :controller do


  context "POST create" do
    it 'creates a new user' do
      params = { user: {email: "example@gmail.com", password: "password"}}
      post :create, params

      expect(response).to redirect_to(root_path)
    end
  end

  context "POST create_session" do
    it 'should login a valid user' do
      user = User.create(email: "example@gmail.com", password: "password")
      params = {user: {email: "example@gmail.com", password: "password"}}
      post :create_session, params

      expect(session[:user_id]).to eq(user.id)
    end

    it 'should not login an invalid user' do
      params = {user: {email: "invalid@gmail.com", password: "password"}}
      post :create_session, params
      expect(response).to redirect_to(root_path)
    end

  end

  # context "GET login" do
  # end
  #
  # context "DELETE logout" do
  # end
  #
  # context "GET signup" do
  # end

end
