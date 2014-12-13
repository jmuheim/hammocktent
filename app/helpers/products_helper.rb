module ProductsHelper
  def add_to_cart_button(id)
    render partial: 'products/add_to_cart_button', locals: {id: id}
  end

  def price(amount, per_pair = false)
    "Price #{per_pair ? 'per pair ' : ''}(CHF): <span class='price'>#{format('%.2f', amount)}.-</span> <sup>excl. <a class='vat' title='For Swiss customers only'>VAT*</a> and shipping</sup>".html_safe
  end
end
