module HomeHelper
  def hello
    "Hello " + Time.now.to_s
  end

  def paypal_url(return_url)
    values = {
        business: "andy+s_1356881051_biz@isp44.com",
        cmd: "_cart",
        upload: 1,
        return: return_url,
        invoice: 33
    }

    values.merge!({
      "amount_1" => 50,
      "item_name_1" => "Subscription",
      "item_number_1" => 99,
      "quantity_1" => 1
    })
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end
end
