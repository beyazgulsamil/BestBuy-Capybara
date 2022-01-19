class HomePage
  extended Helper

  def initialize
    @pop_up_close_button = '[class="c-close-icon c-modal-close-icon"]'
    @search_box = 'gh-search-input'
    @search_button = '[class="header-search-icon"]'
    @account_button = '[class="plButton-label v-ellipsis"]'
    @sign_button = '[data-lid="ubr_mby_signin_b"]'
    @hi_account_text = '[class="plButton-label v-ellipsis"]'
    @menu_button = '[class="c-button-unstyled hamburger-menu-button"]'
    @menu_list = '[class="liDropdownList "]'
    @menu_inside_list = '[class="liDropdownList"] a'
    @wireless_headphone_button = '[data-lid="ubr_au_hed_wless"]'
    @airpods_button = '[data-lid="ubr_au_hed_airpod"]'
  end

  def close_pop_up
    ##Helper.click_helper(@@pop_up_close_button)
    find(@pop_up_close_button).click
  end

  def search(product)
    fill_in(@search_box, with: product)
    find(@search_button).click
  end

  def account_click
    find(@account_button).click
  end

  def sign_in_click
    find(@sign_button).click
  end

  def verify_sign_text
    page.should have_title(@hi_account_text.text())
    p @hi_account_text.text()+" title have to page"
  end

  def click_menu_button
    find(@menu_button).click
  end

  def click_menu_item item
    find(@menu_list,text:item).click
  end

  def click_airpods
    find(@wireless_headphone_button).click
  end

end

