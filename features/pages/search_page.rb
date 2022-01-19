class SearchPage
  def initialize
    @brand_show_more = '[data-track="Brand - Show More"]'
    @left_panel_list = '[class="facet-option-label-text"]'
    @show_results_button = 'Show Results'
    @philips_button = '[for="brand_facet-Philips-modal-0"] [class="facet-option-label-text"]'

  end

  def click_show_more_brand
    find(@brand_show_more).click
  end

  def click_left_panel_item item
    find(@left_panel_list,text:item).click
  end

  def click_brands_philips
    find(@philips_button)
  end

  def click_show_results
    click_button(@show_results_button)
  end

  def click_product_rank rank
    find('[data-track="[context:listRank='+rank+']"] [class="image-link"]').click
  end


end
