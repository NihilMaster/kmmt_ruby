# hash with default values
fruit_prices = Hash.new("Not found")

fruit_prices[:mango] = 3.4
fruit_prices[:orange] = 1.4
fruit_prices[:dragon_fruit] = 13.4

p fruit_prices[:apple]
fruit_prices.default=0
p fruit_prices[:apple]
puts

# hash as method arguments
def calc_t1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end
p calc_t1(24.99, 0.18, 0.07)
puts

def calc_t2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tip_amount + tax_amount
end

bill = {price: 24.99, tip: 0.18, tax: 0.07}
disorder_bill = {tip: 0.18, price: 24.99, tax: 0.07}
p calc_t2(bill)
p calc_t2(disorder_bill)
puts

# Ruby plans to make its syntax more clean
p calc_t2({price: 7.98, tip: 0.72, tax: 0.08})
p calc_t2(price: 7.98, tip: 0.72, tax: 0.08)
p calc_t2 price: 7.98, tip: 0.72, tax: 0.08
