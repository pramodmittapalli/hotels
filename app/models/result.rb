class Result
  attr_accessor :id, :rate, :currency_code
  
  def initialize(opts = {})
    opts.each { |k,v| self.send("#{k}=", v) }
  end
end