class BasvuransController < ApplicationController
  before_action :set_basvuran, only: [:show, :edit, :update, :destroy]
  before_action :require_user_signed_in

  # GET /basvurans
  # GET /basvurans.json
  def index
    @basvurans = Basvuran.all
  end

  # GET /basvurans/1
  # GET /basvurans/1.json
  def show
  end

  # GET /basvurans/new
  def new
    @basvuran = Basvuran.new
  end

  # GET /basvurans/1/edit
  def edit
  end

  # POST /basvurans
  # POST /basvurans.json
  def create
    @basvuran = Basvuran.new(basvuran_params)
    
    @basvuran.kod = (Basvuran.count+10001).to_s
    @basvuran.user = current_user

    respond_to do |format|
      if @basvuran.save
        format.html { redirect_to @basvuran, notice: 'Basvuran was successfully created.' }
        format.json { render :show, status: :created, location: @basvuran }
      else
        format.html { render :new }
        format.json { render json: @basvuran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basvurans/1
  # PATCH/PUT /basvurans/1.json
  def update
    respond_to do |format|
      if @basvuran.update(basvuran_params)
        format.html { redirect_to @basvuran, notice: 'Basvuran was successfully updated.' }
        format.json { render :show, status: :ok, location: @basvuran }
      else
        format.html { render :edit }
        format.json { render json: @basvuran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basvurans/1
  # DELETE /basvurans/1.json
  def destroy
    @basvuran.destroy
    respond_to do |format|
      format.html { redirect_to basvurans_url, notice: 'Basvuran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basvuran
      @basvuran = Basvuran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basvuran_params
      #params.fetch(:basvuran, {})
      params.require(:basvuran).permit(:isim, :soyisim, :telefon, :mail)
    end
end
