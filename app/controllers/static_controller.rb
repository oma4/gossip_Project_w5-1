class StaticController < ApplicationController
  def homepage
  end
  def contact
  end 
  def team
  end 
  
  def first_name
   
 puts params[:first_name]
    
  end

  def gossip
    @all_gossips= Gossip.all
  end
  
  def show
  	@gossip = Gossip.find(params[:id])
  	

  end 
end 
