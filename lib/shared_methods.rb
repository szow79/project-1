module SharedMethods
  def price_str_to_cents(price_str)
    price_str[/\d+\.\d{2}/].to_f * 100
  end

end