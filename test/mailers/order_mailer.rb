class OrderMailer < ApplicationMailer
  def creation_confirmation(order)
    @order = order

    mail(
      to:       @order.user.email,
      subject:  "Pedido #{@order.id} criado!"
    )
  end
end
