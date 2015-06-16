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

  context "DELETE destroy_session" do
    it 'should logout the user' do
      user = User.create(email: "example@gmail.com", password: "password")
      session[:user_id] = user.id
      delete :destroy_session
      expect(session[:user_id]).to eq(nil)
    end
  end

  # context "GET login" do
  #   it 'should provide a form for logging in' do
  #     expect(assigns(:user)).to be_a_new(User)
  #   end
  # end
  #
  # context "GET signup" do
  #   it 'should provide a form for users to sign up' do
  #     expect(assigns(:user)).to be_a_new(User)
  #   end
  # end

end
