class SearchController < ApplicationController
  # All new partners need to be added here!
  @@our_partners = ['www.google.com', 'www.apple.com']
  
  def new_search
    add_magic_scaling_sauce!
  end
  
  def search_results
    @search = params[:search_request]
    # First initialize the search by calling all our partners
    call_partners_with_search_request!(@search)
    # Before getting results, use the Wego secret potion
    add_magic_scaling_sauce!
    # Wait for results from partners
    @the_big_resultset = get_results_from_partners
  end
  
private
  def add_magic_scaling_sauce!
    true
  end

  def call_partners_with_search_request!(search)
    @@our_partners.each do |partner_code|
      partner = Partner.find_by_code(partner_code)
      # This will take a while...
      partner.request_rates_for(search)
    end
  end
  
  def get_results_from_partners
    the_big_resultset = []
    
    @@our_partners.each do |partner_code|
      partner = Partner.find_by_code(partner_code)
      the_big_resultset << partner.fetch_results
    end
    
    the_big_resultset
  end
  
end
