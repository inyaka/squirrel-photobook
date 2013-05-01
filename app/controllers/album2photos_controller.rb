class Album2photosController < ApplicationController
  # GET /album2photos
  # GET /album2photos.json
  def index
    @album2photos = Album2photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @album2photos }
    end
  end

  # GET /album2photos/1
  # GET /album2photos/1.json
  def show
    @album2photo = Album2photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album2photo }
    end
  end

  # GET /album2photos/new
  # GET /album2photos/new.json
  def new
    @album2photo = Album2photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album2photo }
    end
  end

  # GET /album2photos/1/edit
  def edit
    @album2photo = Album2photo.find(params[:id])
  end

  # POST /album2photos
  # POST /album2photos.json
  def create
    @album2photo = Album2photo.new(params[:album2photo])

    respond_to do |format|
      if @album2photo.save
        format.html { redirect_to @album2photo, notice: 'Album2photo was successfully created.' }
        format.json { render json: @album2photo, status: :created, location: @album2photo }
      else
        format.html { render action: "new" }
        format.json { render json: @album2photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /album2photos/1
  # PUT /album2photos/1.json
  def update
    @album2photo = Album2photo.find(params[:id])

    respond_to do |format|
      if @album2photo.update_attributes(params[:album2photo])
        format.html { redirect_to @album2photo, notice: 'Album2photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album2photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album2photos/1
  # DELETE /album2photos/1.json
  def destroy
    @album2photo = Album2photo.find(params[:id])
    @album2photo.destroy

    respond_to do |format|
      format.html { redirect_to album2photos_url }
      format.json { head :no_content }
    end
  end
end
