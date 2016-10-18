class KisiselsController < ApplicationController
  before_action :require_user_signed_in
  
  def edit
    @kisisel = Kisisel.where(basvuran_id: params[:id]).first
    @basvuran = @kisisel.basvuran
  end
  
  def update
    respond_to do |format|
      if @kisisel.update(kisisel_params)
        format.html { redirect_to @kisisel, notice: 'Kişisel bilgiler başarıyla güncellendi.' }
        format.json { render :show, status: :ok, location: @kisisel }
      else
        format.html { render :edit }
        format.json { render json: @kisisel.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def new
    @kisisel = Kisisel.new
    @basvuran = Basvuran.find(session[:basvuran_id])
    @kisisel.basvuran_id = @basvuran.id
  end
  
  def create
    @kisisel = Kisisel.new(kisisel_params)
    respond_to do |format|
      if @kisisel.save
        format.html { redirect_to root_url, notice: 'Kişisel bilgiler başarıyla kaydedildi.' }
      else
        format.html { render :new }
        format.json { render json: @kisisel.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show
    @kisisel = Kisisel.where(basvuran_id: params[:id]).first
    if @kisisel.nil?
      @kisisel = Kisisel.new
    end
  end

  private
    def kisisel_params
      params.require(:kisisel).permit!
    end
end
