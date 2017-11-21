class WorksController < ApplicationController
  before_action :set_client
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  # GET /works/:clients_id/works
  def index
    @works = @client.works
  end

  # GET /works/1
  # GET /works/1.json
  def show
  end

  def pay
    @work = @client.works.find(params[:id])
    @work.update_attribute(:billed, true)
    respond_to do |format|
      format.html { redirect_to client_path(@client), notice: 'Work was successfully payed.' }
      format.json { render :show, status: :ok, location: @work }
    end
  end
  helper_method :pay


  # GET /works/new
  def new
    @work = @client.works.build
  end

  # GET /works/1/edit
  def edit
  end

  # POST /works
  # POST /works.json
  def create
    @work = @client.works.build(work_params)
    @work.update_attribute(:money, @work.hours * @client.tarif)

    respond_to do |format|
      if @work.save
        format.html { redirect_to client_work_path(@client, @work), notice: 'Work was successfully created.' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    respond_to do |format|
      @work.update_attribute(:money, @work.hours * @client.tarif)
      if @work.update(work_param_update)
        format.html { redirect_to client_path(@client), notice: 'Work was successfully updated.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to client_url(@client), notice: 'Work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:client_id])
    end

    def set_work
      @work = @client.works.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:client_id, :note, :hours, :billed)
    end

    def work_param_update
      params.require(:work).permit(:client_id, :note, :hours)
    end
end
