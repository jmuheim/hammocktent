module ProductsHelper
  def add_to_cart_button(id)
    render partial: 'products/add_to_cart_button', locals: {id: id}
  end

  def price(amount)
    "Price (CHF): <span class='price'>#{format('%.2f', amount)}.-</span> <sup>excl. VAT* and shipping</sup>".html_safe
  end
end