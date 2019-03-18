class ParserController < ApplicationController
  def index
  end

  def import_file
    @file_details =  ParserFile.read_file(report_params[:file])
    if request.xhr?
      render :file_data, layout: false
    else
      render :file_data
    end
  end

  private

  def report_params
    params.permit(:file)
  end

end
