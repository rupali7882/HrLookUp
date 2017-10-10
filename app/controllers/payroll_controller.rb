class PayrollController < ApplicationController

  def index
  end
  	
  def import
    Timesheet.import(params[:file])
    redirect_to '/', notice: 'Timesheet was imported successfully.'
  end

  def timesheet
    @timesheet = Timesheet.all
  end

end
