class PitchersController < ApplicationController
  # GET /pitchers
  # GET /pitchers.json
  def index
    @pitchers = Pitcher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pitchers }
    end
  end

  # GET /pitchers/1
  # GET /pitchers/1.json
  def show
    @pitcher = Pitcher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pitcher }
    end
  end

  # GET /pitchers/new
  # GET /pitchers/new.json
  def new
    @pitcher = Pitcher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pitcher }
    end
  end

  # GET /pitchers/1/edit
  def edit
    @pitcher = Pitcher.find(params[:id])
  end

  # POST /pitchers
  # POST /pitchers.json
  def create
    @pitcher = Pitcher.new(params[:pitcher])

    respond_to do |format|
      if @pitcher.save
        format.html { redirect_to @pitcher, notice: 'Pitcher was successfully created.' }
        format.json { render json: @pitcher, status: :created, location: @pitcher }
      else
        format.html { render action: "new" }
        format.json { render json: @pitcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pitchers/1
  # PUT /pitchers/1.json
  def update
    @pitcher = Pitcher.find(params[:id])

    respond_to do |format|
      if @pitcher.update_attributes(params[:pitcher])
        format.html { redirect_to @pitcher, notice: 'Pitcher was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pitcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitchers/1
  # DELETE /pitchers/1.json
  def destroy
    @pitcher = Pitcher.find(params[:id])
    @pitcher.destroy

    respond_to do |format|
      format.html { redirect_to pitchers_url }
      format.json { head :ok }
    end
  end
end
