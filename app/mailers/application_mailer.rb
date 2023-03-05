# frozen_string_literal: true

# Main mailer for BankTest
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
