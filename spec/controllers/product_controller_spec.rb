require'rails_helper' 

describe ProductsController do

	before do
		@product = Product.new
	end

	describe 'GET #index' do
		it "populates an array of all products" do
			test1 = Product.create(name: 'test1')
			test2 = Product.create(name: 'test2')
			get :index
			expect(assigns(:products)).to match_array([test1, test2])
		end

		it "renders the :index template" do
			get :index
			expect(response).to render_template :index
		end 
	end
		
	describe 'GET #show' do
		it "assigns the requested product to @product" do
			product = Product.create
			get :show, id: product
			expect(assigns(:product)).to eq product
		end
		it "renders the :show template" do
			product = Product.create
			get :show, id: product
			expect(response).to render_template :show
		end
	end
	
	describe 'GET #new' do
		it "assigns a new product to @product" do
			product = Product.create
			get :new, id: product
			expect(assigns(:product)).to be_a_new(Product)
		end
		it "renders the :new template" do
			product = Product.create
			get :new, id: product
			expect(response).to render_template :new
		end
	end

	describe 'GET #edit' do
		it "assigns the requested product to @product" do
			product = Product.create
			get :edit, id: product
			expect(assigns(:product)).to eq product
		end
		it "renders the :edit template" do
			product = Product.create
			get :edit, id: product
			expect(response).to render_template :edit
		end
	end

		
	describe "POST #create" do
		context "with valid attributes" do
			it "saves the new product in the database" do
				product = Product.create
				post :create, {id: @product.id, product: {name: 'test', description: 'test', image_url: 'test'}}
				expect{ Product.create }.to change{ Product.count }.by(1)
			end
			it "redirects to products#show" do
				product = Product.create
				post :create, {id: @product.id, product: {name: 'test', description: 'test', image_url: 'test'}}
				expect(response).to redirect_to ('http://test.host/products/2')
			end
		end
		# context "with invalid attributes" do
		# 	it "does not save the new product in the database" do
		# 		product = Product.create
		# 		post :create, {id: @product.errors, product: {name: 'test', description: 'test', image_url: 'test'}}
		# 		expect{ Product.create }.not_to change{ Product.count }
		# 	end
		# 	it "re-renders the :new template" do
		# 		product = Product.create
		# 		post :create, {id: @product.errors, product: {name: 'test', description: 'test', image_url: 'test'}}
		# 		expect(response).to render_template :new
		# 	end 
		# end
	end

				
	# describe 'PATCH #update' do
	# 	context "with valid attributes" do
	# 		it "updates the product in the database" do
	# 			product = Product.create
	# 			patch :update, id: product
	# 			expect(assigns(:product)).to eq product
	# 		end
	# 		it "redirects to the product" 
	# 			product = Product.create
	# 			patch :update, id: product
	# 			expect(response).to redirect_to @product
	# 		end
	# 	# context "with invalid attributes" do 
	# 	# 	it "does not update the product" 
	# 	# 	it "re-renders the :edit template"
	# 	# 	end 
	# 	# 	end
	# end

						
	describe 'DELETE #destroy' do
		it "deletes the product from the database" do
			product = Product.create
			delete :destroy, id: product
			expect{ Product.create }.to change{ Product.count }.by(1)
		end
		it "redirects to users#index" do
			product = Product.create
			delete :destroy, id: product
			expect(response).to redirect_to users_url
		end 
	end

end
