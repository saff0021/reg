class HittersController < ApplicationController
  # GET /hitters
  # GET /hitters.json
  def index
    @hitters = Hitter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hitters }
    end
  end

  # GET /hitters/1
  # GET /hitters/1.json
  def show
    @hitter = Hitter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hitter }
    end
  end

  # GET /hitters/new
  # GET /hitters/new.json
  def new
    @hitter = Hitter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hitter }
    end
  end

  # GET /hitters/1/edit
  def edit
    @hitter = Hitter.find(params[:id])
  end

  # POST /hitters
  # POST /hitters.json
  def create
    @hitter = Hitter.new(params[:hitter])

    respond_to do |format|
      if @hitter.save
        format.html { redirect_to @hitter, notice: 'Hitter was successfully created.' }
        format.json { render json: @hitter, status: :created, location: @hitter }
      else
        format.html { render action: "new" }
        format.json { render json: @hitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hitters/1
  # PUT /hitters/1.json
  def update
    @hitter = Hitter.find(params[:id])

    respond_to do |format|
      if @hitter.update_attributes(params[:hitter])
        format.html { redirect_to @hitter, notice: 'Hitter was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hitters/1
  # DELETE /hitters/1.json
  def destroy
    @hitter = Hitter.find(params[:id])
    @hitter.destroy

    respond_to do |format|
      format.html { redirect_to hitters_url }
      format.json { head :ok }
    end
  end
end
