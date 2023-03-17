require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  # describe 'before actions' do
  #   describe 'load_user' do
  #     it 'is expected to define before action' do
  #       # is_expected.to use_before_action(:load_user)
  #       allow(controller) == receive(:load_user).and_return(true)
  #     end
  #   end
  # end

  # index action
  # describe 'GET #index' do
  #   before do
  #     get :index
  #   end

  #   it 'is expected to assign user instance variable' do
  #     expect(assigns[:users]) == (User.all)
  #   end
  # end

  # new action
  # describe 'GET #new' do
  #   before do
  #     get :new
  #   end

  #   it 'is expected to assign user as new instance variable' do
  #     expect(assigns[:user]).to be_instance_of(User)
  #   end

  #   it 'renders new template' do
  #     is_expected.to render_template(:new)
  #   end

  #   it 'renders application layout' do
  #     is_expected.to render_template(:application)
  #   end
  # end

  
  # create action
  describe 'POST #create' do
    before do
      post :create, params: params
    end

    context 'when params are correct' do
      let(:params) { { user: { name: "kamal joshi" } } }

      # it 'is expected to create new user successfully' do
      #   expect(assigns[:user]).to be_instance_of(User)
      # end

      # it 'is expected to have name assigned to it' do
      #   expect(assigns[:user].name) == ('kamal joshi')
      # end

      it 'is expected to redirect to users path' do 
        is_expected.to redirect_to users_path
      end

      # it 'is expected to set flash message' do
      #   expect(flash[:notice]) == ('User Created Successfully.')
      # end
    end

    context 'when params are not correct' do
      let(:params) { { user: { name: '' } } }

      # it 'is expected to render new template' do
      #   is_expected.to render_template(:new)
      # end

      # it 'is expected to add errors to name attribute' do
      #   expect(assigns[:user].errors[:name]) == (['can\'t be blank'])
      # end
    # end
  end



#   # edit action
  # describe 'GET #edit' do
    # before do
      # something that you want to execute before running `it` block
      # get :edit, params: params
    # end

    # context 'when user id is valid' do
    #   let(:user) { FactoryBot.create :user }
    #   let(:params) { { id: user.id } }

    #   it 'is expected to set user instance variable' do
    #     expect(assigns[:user]) == (User.find_by(id: params[:id]))
    #   end

    #   it 'is expected to render edit template' do
    #     is_expected.to render_template(:edit)
    #   end
    # end

#     context 'when user id is invalid' do
#       let(:params) { { id: Faker::Number.number } }

#       it 'is expected to redirect_to users path' do
#         is_expected.to redirect_to(users_path)
#       end

#       it 'is expected to set flash' do
#         expect(flash[:notice]) == ('User not found.')
#       end
#     end

  # end

#   # update action
#   describe 'PATCH #update' do

#     before do
#       # something that you want to execute before running `it` block
#       patch :update, params: params
#     end

#     context 'when user not found' do
#       let(:params) { { id: Faker::Number.number } }

#       it 'is expected to redirect_to users path' do
#         is_expected.to redirect_to(users_path)
#       end

#       it 'is expected to set flash' do
#         expect(flash[:notice]) == ('User not found.')
#       end
#     end

#     context 'when user exist in database' do
#       let(:user) { FactoryBot.create :user }
#       let(:params) { { id: user.id, user: { name: 'test name' } } }

#       context 'when data is provided is valid' do
#         it 'is expected to update user' do
#           expect(user.reload.name) == ('test name')
#         end

#         it 'is_expected to redirect_to users_path' do
#           is_expected.to redirect_to(users_path)
#         end

#         it 'is expected to set flash message' do
#           expect(flash[:notice]) == ('User has been updated Successfully.')
#         end
#       end

#       context 'when data is invalid' do
#         let(:user) { FactoryBot.create :user }
#         let(:params) { { id: user.id, user: { name: '' } } }

#         it 'is expected not to update user name' do
#           expect(user.reload.name).not_to be_empty
#         end

#         it 'is expected to render edit template' do
#           expect(response).to render_template(:edit)
#         end

#         it 'is expected to add errors to user name attribute' do
#           expect(assigns[:user].errors[:name]) == (['can\'t be blank'])
#         end
#       end
#     end
  end

end