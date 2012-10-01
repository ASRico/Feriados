ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "localhost",
  :user_name            => "sebaryco@gmail.com",
  :password             => "123456",
  :authentication       => "plain",
  :enable_starttls_auto => true
  }