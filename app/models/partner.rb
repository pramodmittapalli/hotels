class Partner < ActiveRecord::Base
  # To be over-ridden by sub-classes of partners
  def request_rates_for(search)
    return true
  end
  
  # Fetch the results from the partner backend
  def fetch_results
    the_big_resultset = []
    
    (1...100).each do |idx|
      Result res = Result.new(:id => idx, :rate => rand(1000), :currency_code => 'USD')
      the_big_resultset << res
    end
    
    the_big_resultset
  end
  
end
