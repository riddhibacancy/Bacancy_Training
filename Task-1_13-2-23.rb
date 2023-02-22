class Product    
  def initialize(name,price)
  @pname=name
  @pprice=price
  end
   def calc()
     puts "Welcome #{@@pn}. Your invoice with 5% gst are below"
     puts "product details"
     final=@pprice.to_i;
     final1=@@p.to_i;
     total=final * final1 / 100;
     answer=@pprice + total;
     puts "#{@pname} - #{answer}" 
   end

   begin
      puts "enter your name"
      @@pn=gets
      puts "enter gst"
      @@p=gets
      product1=Product.new('keyboard',100);
      product1.calc
   end
end
