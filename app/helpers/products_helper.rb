module ProductsHelper
  def add_to_cart_button(id, options = {})
    render partial: 'products/add_to_cart_button', locals: {id: id, options: options}
  end

  def price(amount, additional_info = nil)
    "#{t 'helpers.products.price'} #{additional_info} (CHF): <span class='price'>#{format('%.2f', amount)}.-</span>
    <sup>#{t 'helpers.products.excl_vat_and_shipping', vat: link_to(t('helpers.products.vat'), nil, class: 'vat', title: t('helpers.products.for_swiss_customers_only'))}</sup>".html_safe
  end
end
