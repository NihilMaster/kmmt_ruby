# .sort, .sort_by && .reverse
pc_compl_cost = {mouse: 120000,
                 keyboard: 140000,
                 monitor: 500000,
                 printer: 400000}

p pc_compl_cost.sort
p pc_compl_cost.sort.reverse
puts
p pc_compl_cost.sort_by { |item, price| item }
p pc_compl_cost.sort_by { |item, price| price }
puts

# .key?
puts pc_compl_cost.key?(:mouse)
puts pc_compl_cost.key?(:webcam)
puts

# .value?
puts pc_compl_cost.value? 500000
puts pc_compl_cost.value? 1200000
puts

# .has_key? && .has_value
puts pc_compl_cost.has_key? :printer
puts pc_compl_cost.has_value? 500000
puts

# .delete
company = {facebook: "Mark Z.",
           amazon: "Jeff Besos",
           microsoft: "Bill Gates"}

p company
removed = company.delete(:facebook)
p company
puts

# .select && .reject
recipe1 = {sugar: 5, flour: 10, salt: 2, pepper: 4}
p recipe1.select {|ingre,cant| cant>= 5}
p recipe1.reject {|ingre,cant| cant>= 5}
puts

# .merge && !
recipe2 = {milk: 6, garlic: 1, cheese: 4}
p recipe1
p recipe1.merge(recipe2)
