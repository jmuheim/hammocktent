module ProductsHelper
  def add_to_cart_button(id)
    render partial: 'products/add_to_cart_button', locals: {id: id}
  end

  def price(amount, additional_info = nil)
    "#{t 'helpers.products.price'} #{additional_info} (CHF): <span class='price'>#{format('%.2f', amount)}.-</span> <sup>excl. <a class='vat' title='For Swiss customers only'>VAT*</a> and shipping</sup>".html_safe
  end
end
