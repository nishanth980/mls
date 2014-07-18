class InformationController < ApplicationController
  # GET /information
  # GET /information.json
  def index  
    @@exel_id = params[:exel_id]
    @information = Information.where(:exel_id => @@exel_id, :user_id => "#{current_user.id}" )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @information }
    end
  end

def import
  @file = params[:file]  
  @csv_data = CSV.read @file.path  
  @data_headers = @csv_data[0]     
  @template_headers=Template.find_by_user_id("#{current_user.id}")    
  @template_headers.attributes.each{|i| @a = i}
  @array = @template_headers.attributes.each{|i| @a << i}
  @final_array = @array.invert
  if @final_array.has_key?(@data_headers[0])
    @first_column = []
    @first_column << @final_array[@data_headers[0]]     
  end
  if @final_array.has_key?(@data_headers[1])
  @first_column << @final_array[@data_headers[1]]   
  end
    if @final_array.has_key?(@data_headers[2])
  @first_column << @final_array[@data_headers[2]]   
  end
    if @final_array.has_key?(@data_headers[3])
  @first_column << @final_array[@data_headers[3]]   
  end
    if @final_array.has_key?(@data_headers[4])
  @first_column << @final_array[@data_headers[4]]   
  end
    if @final_array.has_key?(@data_headers[5])
  @first_column << @final_array[@data_headers[5]]   
  end
    if @final_array.has_key?(@data_headers[6])
  @first_column << @final_array[@data_headers[6]]   
  end
    if @final_array.has_key?(@data_headers[7])
  @first_column << @final_array[@data_headers[7]]   
  end
    if @final_array.has_key?(@data_headers[8])
  @first_column << @final_array[@data_headers[8]]   
  end
    if @final_array.has_key?(@data_headers[9])
  @first_column << @final_array[@data_headers[9]]   
  end
    if @final_array.has_key?(@data_headers[10])
  @first_column << @final_array[@data_headers[10]]   
  end
    if @final_array.has_key?(@data_headers[11])
  @first_column << @final_array[@data_headers[11]]   
  end
    if @final_array.has_key?(@data_headers[12])
  @first_column << @final_array[@data_headers[12]]   
  end
    if @final_array.has_key?(@data_headers[13])
  @first_column << @final_array[@data_headers[13]]   
  end
    if @final_array.has_key?(@data_headers[14])
  @first_column << @final_array[@data_headers[14]]   
  end
  if @final_array.has_key?(@data_headers[15])
  @first_column << @final_array[@data_headers[15]]   
  end
  if @final_array.has_key?(@data_headers[16])
  @first_column << @final_array[@data_headers[16]]   
  end
    if @final_array.has_key?(@data_headers[17])
  @first_column << @final_array[@data_headers[17]]   
  end
    if @final_array.has_key?(@data_headers[18])
  @first_column << @final_array[@data_headers[18]]   
  end
    if @final_array.has_key?(@data_headers[19])
  @first_column << @final_array[@data_headers[19]]   
  end
    if @final_array.has_key?(@data_headers[20])
  @first_column << @final_array[@data_headers[20]]   
  end
    if @final_array.has_key?(@data_headers[21])
  @first_column << @final_array[@data_headers[21]]   
  end
    if @final_array.has_key?(@data_headers[22])
  @first_column << @final_array[@data_headers[22]]   
  end
    if @final_array.has_key?(@data_headers[23])
  @first_column << @final_array[@data_headers[23]]   
  end
    if @final_array.has_key?(@data_headers[24])
  @first_column << @final_array[@data_headers[24]]   
  end
    if @final_array.has_key?(@data_headers[25])
  @first_column << @final_array[@data_headers[25]]   
  end
 
  @f,@s,@t,@fo,@fi,@si,@se,@ei,@ni,@te,@le,@twe,@thir,@fou,@fif,@six,@seven,@eigh,@nine,@twenty,@twenone,@twetwo,@twethre,@twenfou,@twenfiv,@twensi=@first_column[0],@first_column[1],@first_column[2],@first_column[3],@first_column[4],@first_column[5],@first_column[6],@first_column[7],@first_column[8],@first_column[9],@first_column[10],@first_column[11],@first_column[12],@first_column[13],@first_column[14],@first_column[15],@first_column[16],@first_column[17],@first_column[18],@first_column[19],@first_column[20],@first_column[21],@first_column[22],@first_column[23],@first_column[24],@first_column[25]

@time = Time.now
@exel_id = current_user.id.to_s + "-" + @time.to_s
  @count = @csv_data.count
    i=1
    while i< @count do 
      @i = i
debugger      
   @check= Information.create(@f => @csv_data[i][0], @s => @csv_data[i][1],@t =>  @csv_data[i][2] ,@fo =>  @csv_data[i][3],@fi =>  @csv_data[i][4],@si =>  @csv_data[i][5],@se =>  @csv_data[i][6],@ei =>  @csv_data[i][7],@ni =>  @csv_data[i][8],@te => @csv_data[i][9],@le =>  @csv_data[i][10],@twe =>  @csv_data[i][11],@thir =>  @csv_data[i][12],@fou =>  @csv_data[i][13],@fif =>  @csv_data[i][14],@six =>  @csv_data[i][15],@seven =>  @csv_data[i][16],@eigh =>  @csv_data[i][17],@nine =>  @csv_data[i][18],@twenty =>  @csv_data[i][19],@twenone =>  @csv_data[i][20],@twetwo =>  @csv_data[i][21],@twethre =>  @csv_data[i][22],@twenfou =>  @csv_data[i][23],@twenfiv =>  @csv_data[i][24],@twensi =>  @csv_data[i][25],:user_id => current_user.id,:exel_id => @exel_id)  
    i=i+1
    end
   
  redirect_to information_index_path(:exel_id => @exel_id, :template_headers => @template_headers)
   
end
  # GET /information/1
  # GET /information/1.json
  def show
    @information = Information.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @information }
    end
  end


def export
 @v=Information.where(:exel_id => @@exel_id)
 @info = @v.order(:mls_id)

  respond_to do |format|
      format.html
      format.csv { send_data @info.to_csv }      
    end
end
  # GET /information/new
  # GET /information/new.json
  def new
    @information = Information.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @information }
    end
  end

  # GET /information/1/edit
  def edit
    @information = Information.find(params[:id])
  end

  # POST /information
  # POST /information.json
  def create
    @information = Information.new(params[:information])

    respond_to do |format|
      if @information.save
        format.html { redirect_to @information, notice: 'Information was successfully created.' }
        format.json { render json: @information, status: :created, location: @information }
      else
        format.html { render action: "new" }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /information/1
  # PUT /information/1.json
  def update
    @information = Information.find(params[:id])

    respond_to do |format|
      if @information.update_attributes(params[:information])
        format.html { redirect_to @information, notice: 'Information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information/1
  # DELETE /information/1.json
  def destroy
    @information = Information.find(params[:id])
    @information.destroy

    respond_to do |format|
      format.html { redirect_to information_index_url }
      format.json { head :no_content }
    end
  end
end
