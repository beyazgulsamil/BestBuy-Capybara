class LoginPage
  def initialize
    @e_mail_box ='fld-e'
    @password_box ='fld-p1'
    @click_log_in = '[type="submit"]'
    @google_sign_box ='[class="c-button c-button-outline c-button-lg c-button-block c-button-icon c-button-icon-leading svg-button social-button undefined"]'
  end

  def fill_e_mail(mail)
    fill_in(@e_mail_box,with: mail)
  end

  def fill_password(pass)
    fill_in(@password_box, with: pass)
  end

  def click_login
    find(@click_log_in).click
  end

  def click_google_sign
    find(@google_sign_box).click
  end


end
