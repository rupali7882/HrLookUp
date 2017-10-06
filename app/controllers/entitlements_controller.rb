class EntitlementsController < ApplicationController
	  before_action :set_entitlement, only: [ :show, :edit, :update, :destroy]

	def index
		@entitlement = Entitlement.new
		@entitlements = Entitlement.all
	end

	def create
       @entitlement = Entitlement.new(entitlement_params)
	   @entitlement.save
	end

	private

    def set_entitlement
      @employee = Entitlement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entitlement_params
      params.require(:entitlement).permit!
    end
end
