# frozen_string_literal: true

# class for the ApplicationMailler
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
