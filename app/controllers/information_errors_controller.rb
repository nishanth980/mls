class InformationErrorsController < ApplicationController
  # GET /information_errors
  # GET /information_errors.json
  def index
    @information_errors = InformationError.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @information_errors }
    end
  end

  # GET /information_errors/1
  # GET /information_errors/1.json
  def show
    @information_error = InformationError.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @information_error }
    end
  end

  # GET /information_errors/new
  # GET /information_errors/new.json
  def new
    @information_error = InformationError.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @information_error }
    end
  end

  # GET /information_errors/1/edit
  def edit
    @information_error = InformationError.find(params[:id])
  end

  # POST /information_errors
  # POST /information_errors.json
  def create
    @information_error = InformationError.new(params[:information_error])

    respond_to do |format|
      if @information_error.save
        format.html { redirect_to @information_error, notice: 'Information error was successfully created.' }
        format.json { render json: @information_error, status: :created, location: @information_error }
      else
        format.html { render action: "new" }
        format.json { render json: @information_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /information_errors/1
  # PUT /information_errors/1.json
  def update
    @information_error = InformationError.find(params[:id])

    respond_to do |format|
      if @information_error.update_attributes(params[:information_error])
        format.html { redirect_to @information_error, notice: 'Information error was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @information_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information_errors/1
  # DELETE /information_errors/1.json
  def destroy
    @information_error = InformationError.find(params[:id])
    @information_error.destroy

    respond_to do |format|
      format.html { redirect_to information_errors_url }
      format.json { head :no_content }
    end
  end
end
