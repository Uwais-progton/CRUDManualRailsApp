class StudentsController < ApplicationController
    #before_action :set_student, only: [:show, :edit, :update, :destroy]
    def index
        ActiveStorage::Current.url_options = { host: request.host, protocol: request.protocol }
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
            # first_name: params[:student][:first_name],
            # last_name: params[:student][:last_name],
            # email: params[:student][:email],
        
        if @student.save
            redirect_to students_path, notice: 'Student was created successfully.'
        else   
            render :new
        end
    end

    
    def show
        @student = Student.find(params[:id])
    end


    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to student_path(@student), notice: 'Student was successfully Updated.'
            
        else
            render :edit
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
            redirect_to student_path, notice: 'Student was successfully deleted.'
        
    end

    # def destroy
    #     @student = Student.find(params[:id])
    #     @student.destroy
    
    #     redirect_to students_url, notice: 'Student was successfully destroyed.'
    #   end
      
    # def destroy
    #     @student = Student.find(params[:id])
    #     @student.destroy
    
    #     redirect_to students_url, notice: 'Student was successfully destroyed.'
    # end

    private

    # def set_student
    #     @student = Student.find(params[:id])
    # end

    def student_params
        #use this instead of the above commented code.
        params.require(:student).permit(:first_name, :last_name, :email, :image)
    end
end