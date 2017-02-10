require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  context 'user is signed in' do
    before { sign_in user }
    describe 'GET #index' do
      before { get :index }
      it { expect(response).to be_success }
    end
  end
end
