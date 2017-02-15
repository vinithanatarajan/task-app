require "rails_helper"

RSpec.describe StudentsController, type: :controller do
  let(:student) { FactoryGirl.create(:student) }
  describe "GET #index" do
    before { get :index }
    it { expect(response).to be_success }
  end
end
