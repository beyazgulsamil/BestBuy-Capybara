class Helper

  def click_helper item
    find(item).click
  end

  def fill_helper locate,text
    find(locate).set(text)
  end

  def assert_text_helper text
    page.should have_title(text)
    p "&& "+text+" && found on page"
  end

  def switch_window condition
    case condition
    when 'first'
      page.driver.browser.switch_to.window(page.driver.browser.window_handles.first)
    when 'last'
      page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    end

  end

end
