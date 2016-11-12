class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :password_expirable
  #  after_create :time
  #
  #  def time
  # ex_time = (updated_at - password_changed_at)
  # end

  Devise.setup do |config|
    # ==> Security Extension
    # Configure security extension for devise
    # Should the password expire (e.g 3.months)
    config.expire_password_after = 30.minutes

    # Need 1 char of A-Z, a-z and 0-9
    # config.password_regex = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/

    # Number of old passwords in archive
    # config.password_archiving_count = 5

    # Deny old password (true, false, count)
    # config.deny_old_passwords = true

    # captcha integration for recover form
    # config.captcha_for_recover = true

    # captcha integration for sign up form
    # config.captcha_for_sign_up = true

    # captcha integration for sign in form
    # config.captcha_for_sign_in = true

    # captcha integration for unlock form
    # config.captcha_for_unlock = true

    # security_question integration for recover form
    # this automatically enables captchas (captcha_for_recover, as fallback)
    # config.security_question_for_recover = false

    # security_question integration for unlock form
    # this automatically enables captchas (captcha_for_unlock, as fallback)
    # config.security_question_for_unlock = false

    # security_question integration for confirmation form
    # this automatically enables captchas (captcha_for_confirmation, as fallback)
    # config.security_question_for_confirmation = false

    # ==> Configuration for :expirable
    # Time period for account expiry from last_activity_at
    #   config.expire_after = 90.days
  end


end
