class FilterCrappersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def view
    # @crappers = Crapper.find_by_city_and_district(params[:city],params[:district])
    @crappers = Crapper.find(:all, :conditions => {:city => [params[:city]],:district => [params[:district]]})
    render :json => @crappers.to_json
  end
end
