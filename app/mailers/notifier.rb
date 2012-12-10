class Notifier < ActionMailer::Base
  default from: "from@example.com" 

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @greeting = "Hi"
    @order = order

    mail to: "to@example.org", :subject => "SimpleStore Order Confirmation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
