class Waiter

attr_accessor :name, :experience

@@all = []


def initialize(name, experience)
  @name = name 
  @experience = experience
  @@all << self 
end 

def self.all 
  @@all
end 

def new_meal(customer, total, tip=0)
  Meal.new(self, customer, total, tip)
end

def meals 
  Meal.all.select {|m| m.waiter == self}
end

def best_tipper 
  best_tip = Meal.each {|m| m.tip}
  best_tip.sort.last.customer
end

end