module AddToCartButtonHelper
  def add_to_cart_button(id)
    content_tag :form, action: "https://www.paypal.com/cgi-bin/webscr",
                       method: "post",
                       target: "paypal" do
      content_tag(:input, nil, name: "cmd", type: "hidden", value: "_s-xclick") +
      content_tag(:input, nil, name: "hosted_button_id", type: "hidden", value: id) +
      # content_tag(:button, 'Add to cart &rarr;'.html_safe, class: 'btn', name: "submit", type: "submit") +
      content_tag(:input, nil, alt: "PayPal - The safer, easier way to pay online!",
                          border: "0", name: "submit",
                          src: "https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif", type: "image") +
      content_tag(:img, nil, alt: "", border: "0", height: "1", src: "https://www.paypalobjects.com/en_US/i/scr/pixel.gif", width: "1")
    end
  end
end
