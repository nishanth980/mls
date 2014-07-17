class MasterTablesController < ApplicationController
  # GET /master_tables
  # GET /master_tables.json
  def index
    @master_tables = MasterTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @master_tables }
    end
  end

  # GET /master_tables/1
  # GET /master_tables/1.json
  def show
    @master_table = MasterTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @master_table }
    end
  end

  # GET /master_tables/new
  # GET /master_tables/new.json
  def new
    @master_table = MasterTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @master_table }
    end
  end

  # GET /master_tables/1/edit
  def edit
    @master_table = MasterTable.find(params[:id])
  end

  # POST /master_tables
  # POST /master_tables.json
  def create
    @master_table = MasterTable.new(params[:master_table])

    respond_to do |format|
      if @master_table.save
        format.html { redirect_to @master_table, notice: 'Master table was successfully created.' }
        format.json { render json: @master_table, status: :created, location: @master_table }
      else
        format.html { render action: "new" }
        format.json { render json: @master_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /master_tables/1
  # PUT /master_tables/1.json
  def update
    @master_table = MasterTable.find(params[:id])

    respond_to do |format|
      if @master_table.update_attributes(params[:master_table])
        format.html { redirect_to @master_table, notice: 'Master table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @master_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_tables/1
  # DELETE /master_tables/1.json
  def destroy
    @master_table = MasterTable.find(params[:id])
    @master_table.destroy

    respond_to do |format|
      format.html { redirect_to master_tables_url }
      format.json { head :no_content }
    end
  end
end
