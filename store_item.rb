# Animal Store 
animal1={:"animal"=> "Dragon",:"size"=> "Large",:"color"=> "Green", :"price"=> 7}
animal2={:"animal"=>"Cat",:"size"=>"Huge",:"color"=>"Red", :"price"=>62}
animal3={:"animal"=>"Fish",:"size"=>"small",:"color"=>"White", :"price"=>50000}

puts "The #{animal1[:animal]} is #{animal1[:size]} and #{animal1[:color]} it costs $#{animal1[:price]}."
puts "The #{animal2[:animal]} is #{animal2[:size]} and #{animal2[:color]} it costs $#{animal2[:price]}."
puts "The #{animal3[:animal]} is #{animal3[:size]} and #{animal3[:color]} it costs $#{animal3[:price]}."
puts 

#javascript syntax 
animal1={animal: "Dragon",size: "Large",color: "Green", price: 7}
animal2={animal:"Cat",size:"Huge",color:"Red", price: 62}
animal3={animal:"Fish",size: "small",color: "White", price: 50000}

puts "The #{animal1[:animal]} is #{animal1[:size]} and #{animal1[:color]} it costs $#{animal1[:price]}."
puts "The #{animal2[:animal]} is #{animal2[:size]} and #{animal2[:color]} it costs $#{animal2[:price]}."
puts "The #{animal3[:animal]} is #{animal3[:size]} and #{animal3[:color]} it costs $#{animal3[:price]}."
puts 


#OOP
class Store
  attr_reader :animal,:size,:color,:price
  attr_writer :price 

  def initialize(animal,size,color,price)
    @animal=animal
    @size=size
    @color=color
    @price=price
  end

  def print_info
    puts "The #{@animal} is  #{@size} and #{@color} it costs $#{@price}."
  end 

end 

#OOP with a hash
animal1=Store.new("Dragon","large","green",7)
animal2=Store.new("Cat","huge","red",62)
animal3=Store.new("Fish","small","white",50000)


animal1.print_info
animal1.price=8
animal1.print_info
puts 

class Store
  attr_reader :animal,:size,:color,:price
  attr_writer :price 

  def initialize(hash_input)
    @animal=hash_input[:animal]
    @size=hash_input[:size]
    @color=hash_input[:color]
    @price=hash_input[:price]
  end

  def print_info
    puts "The #{@animal} is  #{@size} and #{@color} it costs $#{@price}."
  end 

end 

animal1=Store.new({:"animal"=> "Dragon",:"size"=> "Large",:"color"=> "Green", :"price"=> 7})
animal2=Store.new({:"animal"=>"Cat",:"size"=>"Huge",:"color"=>"Red", :"price"=>62})
animal3=Store.new({:"animal"=>"Fish",:"size"=>"small",:"color"=>"White", :"price"=>50000})


animal1.print_info
animal1.price=8
animal1.print_info
puts 