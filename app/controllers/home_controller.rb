class HomeController < ApplicationController
  def index
    @employee = Employee.first
  end
end
