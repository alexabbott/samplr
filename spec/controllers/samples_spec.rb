require "rails_helper" 
require 'shoulda/matchers'

describe SamplesController do 

	it "should get page for samples" do

		#simulate a 'get' request on our SamplesController
		#hit the 'index' method
		get :index

		#staus code returned should be 200 for success
		expect(response).to have_http_status(:success)

		#check that the index view was rendered
		expect(response).to render_template(:index)
	end

	it "should get an object from db" do

		# kick off a get request
		get :index

		# simply test that this controller will assign an 
		# @samples object for our view
		assigns(:samples).should_not be_nil
	end

	it "should create a sample" do

     ## use HTTP ver 'post, call the 'create' method,
     #  pass a parameter named 'sample, use Factory Girl to return a 
     #  hash of the attributes of an object, this will pass 'name'
     #  to create, which is the parameter it will expect
     post :create, sample: FactoryGirl.attributes_for(:sample)

     ## test that the controller redirects to the correct path
     #  in this case we want to go back to where we list out all
     #  the samples 
     expect(response).to redirect_to(samples_path)
end

end