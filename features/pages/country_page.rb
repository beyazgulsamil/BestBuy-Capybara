class CountryPage
  def initialize
    @united_states='[class="content"] [lang="en"] [alt="United States"]'
  end

  def click_united_states
    find(@united_states).click
  end

end
