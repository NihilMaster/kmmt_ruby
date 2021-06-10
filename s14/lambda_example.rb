def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end
def convert_to_pesos(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric)
end
def convert_to_rupees(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end
p convert_to_euros(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)
puts


def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end
p convert(1000, "euros") { |d|  d * 0.95}
p convert(1000, "pesos") { |d|  d * 20.67}
p convert(1000, "rupees") { |d|  d * 68.13}
puts


to_eur = lambda {|d|  d * 0.95}
to_mxn = lambda {|d|  d * 20.67}
to_rup = lambda {|d|  d * 68.13}
def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end
p convert(1000, to_eur)
p convert(1000, to_mxn)
p convert(1000, to_rup)
puts

puts [100,200,300].map(&to_mxn)
