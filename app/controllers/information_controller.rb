class InformationController < ApplicationController
  # GET /information
  # GET /information.json
  def index  
    @@exel_id = params[:exel_id]
    @information = Information.where(:exel_id => @@exel_id, :user_id => "#{current_user.id}" )
    @errors = InformationError.where(:exel_id => @@exel_id)
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
  @first_column = []
  if @data_headers.include? @final_array.keys[1]
    @first_column = []
    @first_column << @final_array[@final_array.keys[1]]     
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[1]} header mapped to Mls Id is missing ") 
    return 
  end
  
  @first_column << @final_array[@final_array.keys[2]]   
  
    if @data_headers.include? @final_array.keys[3]
  @first_column << @final_array[@final_array.keys[3]]  
    else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[3]} header mapped to Sale Type is missing ") 
    return  
  end
    if @data_headers.include? @final_array.keys[4]
  @first_column << @final_array[@final_array.keys[4]]   
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[4]} header mapped to Listing Status is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[5]
  @first_column << @final_array[@final_array.keys[5]]  
  else
  @first_column << ""
  end

    if @data_headers.include? @final_array.keys[6]
  @first_column << @final_array[@final_array.keys[6]] 
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[6]} header mapped to Address is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[7]
  @first_column << @final_array[@final_array.keys[7]]   
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[7]} header mapped to Suite is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[8]
  @first_column << @final_array[@final_array.keys[8]] 
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[8]} header mapped to Street is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[9]
  @first_column << @final_array[@final_array.keys[9]]   
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[9]} header mapped to Street Name is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[10]
  @first_column << @final_array[@final_array.keys[10]] 
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[10]} header mapped to City is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[11]
  @first_column << @final_array[@final_array.keys[11]]   
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[11]} header mapped to State is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[12]
  @first_column << @final_array[@final_array.keys[12]]  
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[12]} header mapped to Zip is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[13]
  @first_column << @final_array[@final_array.keys[13]] 
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[13]} header mapped to Sale Date is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[14]
  @first_column << @final_array[@final_array.keys[14]] 
  else        
    redirect_to({:controller => "information", :action => "index"}, :notice => "#{@final_array.keys[14]} header mapped to Sale Price is missing ") 
    return
  end
    if @data_headers.include? @final_array.keys[15]
  @first_column << @final_array[@final_array.keys[15]] 
  else
  @first_column << ""
  end
  if @data_headers.include? @final_array.keys[16]
  @first_column << @final_array[@final_array.keys[16]] 
  else
  @first_column << ""
  end
  if @data_headers.include? @final_array.keys[17]
  @first_column << @final_array[@final_array.keys[17]] 
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[18]
  @first_column << @final_array[@final_array.keys[18]] 
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[19]
  @first_column << @final_array[@final_array.keys[19]]   
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[20]
  @first_column << @final_array[@final_array.keys[20]] 
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[21]
  @first_column << @final_array[@final_array.keys[21]]   
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[22]
  @first_column << @final_array[@final_array.keys[22]]  
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[23]
  @first_column << @final_array[@final_array.keys[23]] 
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[24]
  @first_column << @final_array[@final_array.keys[24]]   
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[25]
  @first_column << @final_array[@final_array.keys[25]]  
  else
  @first_column << ""
  end
    if @data_headers.include? @final_array.keys[26]
  @first_column << @final_array[@final_array.keys[26]] 
  else
  @first_column << ""
  end

 
  @f,@s,@t,@fo,@fi,@si,@se,@ei,@ni,@te,@le,@twe,@thir,@fou,@fif,@six,@seven,@eigh,@nine,@twenty,@twenone,@twetwo,@twethre,@twenfou,@twenfiv,@twensi=@first_column[0],@first_column[1],@first_column[2],@first_column[3],@first_column[4],@first_column[5],@first_column[6],@first_column[7],@first_column[8],@first_column[9],@first_column[10],@first_column[11],@first_column[12],@first_column[13],@first_column[14],@first_column[15],@first_column[16],@first_column[17],@first_column[18],@first_column[19],@first_column[20],@first_column[21],@first_column[22],@first_column[23],@first_column[24],@first_column[25]

@time = Time.now
@exel_id = current_user.id.to_s + "-" + @time.to_s
       
       

   CSV.foreach(@file.path, :headers => true, :col_sep => ',') do |row|

   if row[@array[@f]] != nil && row[@array[@t]] != nil && row[@array[@fo]]!=nil && row[@array[@fou]]!= nil && row[@array[@si]]!= nil && row[@array[@se]]!= nil && row[@array[@ei]]!= nil && row[@array[@ni]]!= nil && row[@array[@te]]!= nil && row[@array[@le]]!= nil && row[@array[@twe]]!= nil && row[@array[@thir]]!= nil

@val = {}.merge( @f!="" ? { @f => row[@array[@f]] } : {}).merge( @s!="" ? {@s => @final_array.keys[2]} : {}).merge( @t!="" ? {@t =>  row[@array[@t]]} : {}).merge( @fo!="" ? {@fo => row[@array[@fo]]} : {}).merge( @fi != "" ? {@fi =>  row[@array[@fi]]} : {}).merge(@si != "" ? {@si =>  row[@array[@si]]} : {}).merge(@se != "" ? {@se =>  row[@array[@se]]} : {}).merge(@ei!="" ? {@ei =>  row[@array[@ei]]} : {}).merge(@ni !="" ? {@ni =>  row[@array[@ni]]} : {}).merge(@te!="" ? {@te => row[@array[@te]]} : {}).merge(@le!="" ? {@le =>  row[@array[@le]]} : {}).merge(@twe!="" ? {@twe =>  row[@array[@twe]]} : {}).merge(@thir!="" ? {@thir =>  row[@array[@thir]]} : {}).merge(@fou!=""  ? {@fou =>  row[@array[@fou]]} : {}).merge(@fif!="" ? {@fif =>  row[@array[@fif]]} : {}).merge(@six!="" ? {@six =>  row[@array[@six]]} : {}).merge(@seven!="" ? {@seven =>  row[@array[@seven]]} : {}).merge(@eigh!="" ? {@eigh =>  row[@array[@eigh]]} : {}).merge(@nine!="" ? {@nine =>  row[@array[@nine]]} : {}).merge(@twenty!=""  ? {@twenty =>  row[@array[@twenty]]} : {}).merge(@twenone!="" ? {@twenone =>  row[@array[@twenone]]} : {}).merge(@twetwo!="" ? {@twetwo =>  row[@array[@twetwo]]} : {}).merge(@twethre!="" ? {@twethre =>  row[@array[@twethre]]} : {}).merge(@twenfou!="" ? {@twenfou =>  row[@array[@twenfou]]} : {}).merge(@twenfiv!="" ? {@twenfiv =>  row[@array[@twenfiv]]} : {}).merge(@twensi!="" ? {@twensi =>  row[@array[@twensi]]} : {}).merge({:user_id => current_user.id}).merge({:exel_id => @exel_id}).merge({:exel_id => @exel_id}).merge({:created_at => Time.now.day})

 @check= Information.create(@val)
    
    
     
    else
       @check= InformationError.create(@f => row[@array[@f]] , @s => @final_array.keys[2],@t =>  row[@array[@t]] ,@fo =>  row[@array[@fo]],@fi =>  row[@array[@fi]],@si =>  row[@array[@si]],@se =>  row[@array[@se]],@ei =>  row[@array[@ei]],@ni =>  row[@array[@ni]],@te => row[@array[@te]],@le =>  row[@array[@le]],@twe =>  row[@array[@twe]],@thir =>  row[@array[@thir]],@fou =>  row[@array[@fou]],@fif =>  row[@array[@fif]],@six =>  row[@array[@six]],@seven =>  row[@array[@seven]],@eigh =>  row[@array[@eigh]],@nine =>  row[@array[@nine]],@twenty =>  row[@array[@twenty]],@twenone =>  row[@array[@twenone]],@twetwo =>  row[@array[@twetwo]],@twethre =>  row[@array[@twethre]],@twenfou =>  row[@array[@twenfou]],@twenfiv =>  row[@array[@twenfiv]],@twensi =>  row[@array[@twensi]],:user_id => current_user.id,:exel_id => @exel_id, :created_at => Time.now.day )  
    end
    end
  flash[:notice] = 'Successfully saved the data'
  redirect_to (information_index_path(:exel_id => @exel_id, :template_headers => @template_headers))
   return

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
 @val=@v.select("mls_id,mls_name,sale_type,listing_status,apn,address,suite,street,street_name,city,state,zip,sale_date,sale_price,concession_amount,owner,days_on_market,original_listing_price,original_listing_date,current_listing_price,current_listing_date,contact_date,financing_type,listing_status_date,public_remarks,agent_remarks")
 @info = @val.order(:mls_id)

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
