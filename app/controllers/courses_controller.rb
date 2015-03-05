class CoursesController < ApplicationController
	before_action :authenticate_user!, except:[:index]
	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
  	end

	def new
		@course = Course.new
	end

	def edit
	  @course = Course.find(params[:id])
	end

	def create
	  	@course = Course.new(course_params)
        owner_id = current_user.id
	  	if @course.save
		   flash[:notice] = "Course successfully created"
	       redirect_to "/courses"
		else
			render 'courses'
		end
	end

	def update
	  @course = Course.find(params[:id])
	 
	  if @course.update(course_params)
	    redirect_to @course
	  else
	    render 'courses/edit'
	  end
	end


	def destroy
	  @course = Course.find(params[:id])
	  @course.destroy
	 
	  redirect_to courses_path
	end


	def start_course
		start = Course.find(subscriptions_params[:course_id])
		current_user.courses << start
		flash[:notice] = "Start studying!"
	    redirect_to "/courses"		
	end

	def quit_course 
		quit = Course.where(subscriptions_params[:course_id]).take
		quit.destroy
		flash[:notice] = "Quitter!"
		redirect_to "/courses"
	end





	private
	def course_params
		params.require(:course).permit(:owner_id, :name, :description)
	end

	def subscriptions_params
		params.require(:course).permit(:user_id, :course_id)
	end

end
