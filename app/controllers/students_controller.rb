class StudentsController < ApplicationController

	layout 'admin'

def index
	
end

	def list
		@students = Student.order("students.id ASC")
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
	@student=Student.new(params[:student])
	if @student.save
		flash[:notice]="Student created."
      redirect_to(:action => 'list')
  else
  	render('new')
end
end

def edit
	@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
	
	if @student.update_attributes(params[:student])
		flash[:notice]="Student updated."
      redirect_to(:action => 'show', :id => @student.id)
  else
  	render('edit')
end
end

def delete
	@student = Student.find(params[:id])
	end

	def destroy
	Student.find(params[:id]).destroy
	flash[:notice]="Student destroyed."
	redirect_to(:action => 'list')	
	end
end
