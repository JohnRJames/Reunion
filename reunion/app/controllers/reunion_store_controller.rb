class ReunionStoreController < ApplicationController
  skip_before_filter :authorize
  def index
   @reunion_options = ReunionOption.paginate :page=>params[:page], :order=>'created_at desc',
      :per_page => 3
    @cart = current_cart
  end

end
