class ResumesController < ApplicationController
  require 'prawn'
  
  def index
    @resumes = Resume.all
    
    respond_to do |format|
      format.html
      format.pdf { render :layout => false}
    end
    
  end
  
  def show
    @resume = Resume.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf { render :layout => false}  
      
    end
  end
  
  
  # def index
#     @resumes = Resume.all
#
#     respond_to do |format|
#       format.html
#       format.pdf do
#         pdf = Prawn::Document.new do
#           text "Hello World"
#           send_data pdf.render, type: "application/pdf", filename: 'report.pdf'
#         end
#       end
#     end
#   end

private

def resume_params
  params.require(:resume).permit(:title, :label)
end

end
