 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/actions", type: :request do
  # Action. As you add validations to Action, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Action.create! valid_attributes
      get actions_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      action = Action.create! valid_attributes
      get action_url(action)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_action_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      action = Action.create! valid_attributes
      get edit_action_url(action)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Action" do
        expect {
          post actions_url, params: { action: valid_attributes }
        }.to change(Action, :count).by(1)
      end

      it "redirects to the created action" do
        post actions_url, params: { action: valid_attributes }
        expect(response).to redirect_to(action_url(Action.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Action" do
        expect {
          post actions_url, params: { action: invalid_attributes }
        }.to change(Action, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post actions_url, params: { action: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested action" do
        action = Action.create! valid_attributes
        patch action_url(action), params: { action: new_attributes }
        action.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the action" do
        action = Action.create! valid_attributes
        patch action_url(action), params: { action: new_attributes }
        action.reload
        expect(response).to redirect_to(action_url(action))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        action = Action.create! valid_attributes
        patch action_url(action), params: { action: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested action" do
      action = Action.create! valid_attributes
      expect {
        delete action_url(action)
      }.to change(Action, :count).by(-1)
    end

    it "redirects to the actions list" do
      action = Action.create! valid_attributes
      delete action_url(action)
      expect(response).to redirect_to(actions_url)
    end
  end
end
