class BaintodoItemsController < ApplicationController
  before_action :set_baintodo_list 
  before_action :set_baintodo_item, except: [:create]
  
  #this creates action for creating new baintodo's
  def create
    @baintodo_item = @baintodo_list.baintodo_items.create(baintodo_item_params)
    redirect_to @baintodo_list
  end
  
  def destroy
    @baintodo_item = @baintodo_list.baintodo_items.find(params[:id])
    if @baintodo_item.destroy
      flash[:success] = "Todo list item was deleted."
    else
      flash[:error] = "Todo item could not be deleted."
    end
    redirect_to @baintodo_list
  end
  
  
  def complete
   @baintodo_item.update_attribute(:completed_at, Time.now)
   redirect_to @baintodo_list, notice: "Todo item completed"
  end
  
  private
  
  def set_baintodo_list
    #encounter error with params[baintodo_list_id] now fixed with :
    @baintodo_list = BaintodoList.find(params[:baintodo_list_id])
  end
  
   def set_baintodo_item
    @baintodo_item = @baintodo_list.baintodo_items.find(params[:id])
   end

  def baintodo_item_params
    params[:baintodo_item].permit(:content)
  end
    
 
  
end
