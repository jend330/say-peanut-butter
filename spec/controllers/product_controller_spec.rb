require'rails_helper' 

describe ProductsController do

	before do
		@product = Product.new
	end

	describe 'GET #index' do
		it "populates an array of all products" do
			test1 = create(:product, name: 'test1')
			test2 = create(:product, name: 'test2')
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
			product = create(:product)
			get :show, id: product
			expect(assigns(:product)).to eq product
		end
		it "renders the :show template" do
			product = create(:product)
			get :show, id: product
			expect(response).to render_template :show
		end
	end

end
	
	# describe 'GET #new' do
	# 	it "assigns a new product to @product" 
	# 	it "renders the :new template"
	# 	end

	# describe 'GET #edit' do
	# 	it "assigns the requested product to @product" 
	# 	it "renders the :edit template"
	# 	end
		
	# describe "POST #create" do
	# 	context "with valid attributes" do
	# 		it "saves the new product in the database"
	# 		it "redirects to products#show" 
	# 		end
	# 	context "with invalid attributes" do
	# 		it "does not save the new product in the database" 
	# 		it "re-renders the :new template"
	# 		end 
	# 		end
				
	# describe 'PATCH #update' do
	# 	context "with valid attributes" do
	# 		it "updates the product in the database"
	# 		it "redirects to the product" 
	# 		end
	# 	context "with invalid attributes" do 
	# 		it "does not update the product" 
	# 		it "re-renders the :edit template"
	# 		end 
	# 		end
						
	# describe 'DELETE #destroy' do
	# 	it "deletes the product from the database" 
	# 	it "redirects to users#index"
	# 	end 
	# 	end
