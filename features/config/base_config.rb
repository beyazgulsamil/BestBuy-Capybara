module BaseConfig
  @environment = ENV['environment'] || 'prod'
  def self.environment
    @environment
  end
  @browser = ENV['browser'] || 'chrome'
  def self.browser
    @browser
  end
  @base_url ="https://www.bestbuy.com"
  def self.base_url
    @base_url
  end
end
