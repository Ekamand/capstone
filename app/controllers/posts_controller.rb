class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show, :search]

	def index
		@comments = Comment.all
		@posts = Post.all
	end

	def create 
		@post = Post.create(title: params[:input_title],
							post_text: params[:input_text],
							ingredients: params[:input_ingredients],
							user_id: params[:user_id])

			  	if @post.save
	  	flash[:success] = "Post created successfully!"
	  	redirect_to "/posts/#{@post.id}"
	  else
	  	flash[:danger] = "item could not be created!"
	  	render "new.html.erb"
	  end
	end

		def show
		@post = Post.all
		@comments = Comment.all
		# @order = @order.find_by(id:)
		post_id = params[:id]
		@post = Post.find_by(id: post_id)
	end

	def new 
		@post = Post.new
		if !(current_user)
		redirect_to "/index"
		end
	end

	def edit	
		if !(current_user)
		redirect_to "/"
		else
		post_id = params[:id]
		@post = Post.find_by(id: post_id)
		end

	end

	def update
		post_id = params[:id]
		@post = Post.find_by(id: post_id)
		@post.update(title: params[:input_title],
							post_text: params[:input_text],
							ingredients: params[:input_ingredients],
							user_id: params[:user_id])

			  	if @post.save
	  	flash[:success] = "Post updated successfully!"
	  	redirect_to "/posts/#{@post.id}"
	  else
	  	flash[:danger] = "item could not be updated!"
	  	# render "new.html.erb"
	  end
	end

		def destroy
			# WORKING CODE
		@post = Post.find_by(id: params[:id])
		@post.destroy

		flash[:danger] = "Post deleted successfully!"
		redirect_to "/index"
	end
	def search
		search_term = params[:search_term]
		@posts = Post.where("title ILIKE?", "%#{search_term}%")
		render :index
	end


end
