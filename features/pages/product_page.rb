class ProductPage
  def initialize
    @save_button = '[class="col-xs-6"] [class="save-for-later-save"]'
    @save_list_button ='[data-lid="hdr_saved_lv"]'
    @save_list = '[class="sku-card-product-title"] [data-track="navhistory_masi_timeline_product"]'
  end

  def click_save_button
    find(@save_button).click
  end

  def click_save_list_button
    find(@save_list_button).click
  end

  def verify_list
    page.should have_title(@save_list.text())
    p @save_list.text()+'have a saved list'
  end

end
