class WorkfilesController < ApplicationController
  before_action :set_workfile, only: [:show, :edit, :update, :destroy]

  # GET /workfiles
  # GET /workfiles.json
  def index
    @workfiles = Workfile.all
  end

  # GET /workfiles/1
  # GET /workfiles/1.json
  def show
  end

  # GET /workfiles/new
  def new
    @workfile = Workfile.new
  end

  # GET /workfiles/1/edit
  def edit
  end

  # POST /workfiles
  # POST /workfiles.json
  def create
    @workfile = Workfile.new(workfile_params)

    respond_to do |format|
      if @workfile.save
        format.html { redirect_to @workfile, notice: 'Workfile was successfully created.' }
        format.json { render :show, status: :created, location: @workfile }
      else
        format.html { render :new }
        format.json { render json: @workfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workfiles/1
  # PATCH/PUT /workfiles/1.json
  def update
    respond_to do |format|
      if @workfile.update(workfile_params)
        format.html { redirect_to @workfile, notice: 'Workfile was successfully updated.' }
        format.json { render :show, status: :ok, location: @workfile }
      else
        format.html { render :edit }
        format.json { render json: @workfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workfiles/1
  # DELETE /workfiles/1.json
  def destroy
    @workfile.destroy
    respond_to do |format|
      format.html { redirect_to workfiles_url, notice: 'Workfile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workfile
      @workfile = Workfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workfile_params
      params.require(:workfile).permit(:title, :description, :date, :user_id)
    end
end
