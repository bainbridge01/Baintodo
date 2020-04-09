class BaintodoListsController < ApplicationController
  before_action :set_baintodo_list, only: [:show, :edit, :update, :destroy]

  # GET /baintodo_lists
  # GET /baintodo_lists.json
  def index
    @baintodo_lists = BaintodoList.all
  end

  # GET /baintodo_lists/1
  # GET /baintodo_lists/1.json
  def show
  end

  # GET /baintodo_lists/new
  def new
    @baintodo_list = BaintodoList.new
  end

  # GET /baintodo_lists/1/edit
  def edit
  end

  # POST /baintodo_lists
  # POST /baintodo_lists.json
  def create
    @baintodo_list = BaintodoList.new(baintodo_list_params)

    respond_to do |format|
      if @baintodo_list.save
        format.html { redirect_to @baintodo_list, notice: 'Baintodo list was successfully created.' }
        format.json { render :show, status: :created, location: @baintodo_list }
      else
        format.html { render :new }
        format.json { render json: @baintodo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baintodo_lists/1
  # PATCH/PUT /baintodo_lists/1.json
  def update
    respond_to do |format|
      if @baintodo_list.update(baintodo_list_params)
        format.html { redirect_to @baintodo_list, notice: 'Baintodo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @baintodo_list }
      else
        format.html { render :edit }
        format.json { render json: @baintodo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baintodo_lists/1
  # DELETE /baintodo_lists/1.json
  def destroy
    @baintodo_list.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Baintodo list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baintodo_list
      @baintodo_list = BaintodoList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baintodo_list_params
      params.require(:baintodo_list).permit(:title, :descrption)
    end
end
