require 'pry'

<<<<<<< HEAD

=======
>>>>>>> 4578a0c6fde6583d074daab7e90af2cc90f4d3f6
class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)
    else
      resp.write "Path Not Found"
    end

<<<<<<< HEAD
    if @@cart.empty?
      resp.write "Your cart is empty"
    else
      @@cart .each do |cart_item|
        resp.write "#{cart_item}\n"
      end
    end

  # binding.pry
    if @@items.include?(req.params["item"])
      @@cart << req.params["item"]
      resp.write "added #{req.params["item"]}"
    else
      resp.write "We don't have that item"
=======
    @@cart.each do |cart_item|
      resp.write "#{cart_item}\n"
    end

binding.pry
    if @@items.include?(search_term)
      @@carts << search_term
    else
      resp.write "Your cart is empty"
>>>>>>> 4578a0c6fde6583d074daab7e90af2cc90f4d3f6
    end


      resp.finish
    end

    def handle_search(search_term)
      if @@items.include?(search_term)
        return "#{search_term} is one of our items"
      else
        return "Couldn't find #{search_term}"
      end
    end
  end
