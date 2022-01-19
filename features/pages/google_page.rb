class GooglePage
  def initialize
    @google_sign_box = '[type="email"]'
    @identifier_next = '[class="qhFLie"] [class="VfPpkd-vQzf8d"]'
    @password_box = '[type="password"]'
    @password_next = '[class="qhFLie"] [class="VfPpkd-vQzf8d"]'
  end

  def google_fill_sign user
    find(@google_sign_box).set(user)
  end

  def click_next_sign
    find(@identifier_next).click
  end

  def click_next_pass
    find(@password_next).click
  end

  def google_fill_password pass
    find(@password_box).set(pass)
  end

end
