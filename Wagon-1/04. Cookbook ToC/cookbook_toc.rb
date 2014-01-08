title = 'Recettes de kiffeur'

chapters = [
             ['Materiel pour cuisiner', 1],
             ['Produits de saison', 8],
             ['Sauces et soupes', 19],
             ['Viandes et Gibiers', 38],
             ['Poissons, coquillages et crustaces', 157]
           ]
           
# You program goes here !

width = chapters.max { |x, y| (x + y).lenght}
puts title.center(width)
for i in 0..4
	puts "chapter #{i + 1} : #{chapters[1][0]}".ljust(55) + "page #{chapters[1][1]}".rjust(15)
end