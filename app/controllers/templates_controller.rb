class TemplatesController < ApplicationController
  # GET /templates
  # GET /templates.json
  def index    
  @template = Template.find_by_user_id("#{current_user.id}") 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @templates }
    end
  end

  def import  
  @template = Template.find_by_user_id("#{current_user.id}")     
  @template.delete if @template.present?  
  @file = params[:file]  
  @csv_data = CSV.read @file.path   
  @csv_data=@csv_data.flatten  

    debugger
  redirect_to combined_form_templates_path(:csv_data =>  @csv_data)

 end

def edit_import

end
  # GET /templates/1
  # GET /templates/1.json
  def show
    @template = Template.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @template }
    end
  end

  def combined_form      
  @x=params[:csv_data]  
  debugger
  
  end

def save_form 
 @t1=params[:temp1]
 @t2=params[:temp2]
 @t3=params[:temp3]
 @t4=params[:temp4]
 @t5=params[:temp5]
 @t6=params[:temp6]
 @t7=params[:temp7]
 @t8=params[:temp8]
 @t9=params[:temp9]
 @t10=params[:temp10]
 @t11=params[:temp11]
 @t12=params[:temp12]
 @t13=params[:temp13]
 @t14=params[:temp14]
 @t15=params[:temp15]
 @t16=params[:temp16]
 @t17=params[:temp17]
 @t18=params[:temp18]
 @t19=params[:temp19]
 @t20=params[:temp20]
 @t21=params[:temp21]
 @t22=params[:temp22]
 @t23=params[:temp23]
 @t24=params[:temp24]
 @t25=params[:temp25]
 @t26=params[:temp26]

 @tab1=params[:tab1]
 @tab2=params[:tab2]
 @tab3=params[:tab3]
 @tab4=params[:tab4]
 @tab5=params[:tab5]
 @tab6=params[:tab6]
 @tab7=params[:tab7]
 @tab8=params[:tab8]
 @tab9=params[:tab9]
 @tab10=params[:tab10]
 @tab11=params[:tab11]
 @tab12=params[:tab12]
 @tab13=params[:tab13]
 @tab14=params[:tab14]
 @tab15=params[:tab15]
 @tab16=params[:tab16]
 @tab17=params[:tab17]
 @tab18=params[:tab18]
 @tab19=params[:tab19]
 @tab20=params[:tab20]
 @tab21=params[:tab21]
 @tab22=params[:tab22]
 @tab23=params[:tab23]
 @tab24=params[:tab24]
 @tab25=params[:tab25]
 @tab26=params[:tab26]

 @user_id=current_user.id


@tem=Template.create(@tab1=>@t1,@tab2=>@t2,@tab3=>@t3,@tab4=>@t4,@tab5=>@t5,@tab6=>@t6,@tab7=>@t7,@tab8=>@t8,@tab9=>@t9,@tab10=>@t10,@tab11=>@t11,@tab12=>@t12,@tab13=>@t13,@tab14=>@t14,@tab15=>@t15,@tab16=>@t16,@tab17=>@t17,@tab18=>@t18,@tab19=>@t19,@tab20=>@t20,@tab21=>@t21,@tab22=>@t22,@tab23=>@t23,@tab24=>@t24,@tab25=>@t25,@tab26=>@t26,:user_id => @user_id)
debugger
redirect_to templates_path  
 debugger  
  
end

  # GET /templates/new
  # GET /templates/new.json
  def new
    @template = Template.new(row)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @template }
    end
  end

  # GET /templates/1/edit
  def edit
    @template = Template.find(params[:id])
  end

  # POST /templates
  # POST /templates.json
  def create
    @template = Template.new(params[:template])

    respond_to do |format|
      if @template.save
        format.html { redirect_to @template, notice: 'Template was successfully created.' }
        format.json { render json: @template, status: :created, location: @template }
      else
        format.html { render action: "new" }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /templates/1
  # PUT /templates/1.json
  def update
    @template = Template.find(params[:id])

    respond_to do |format|
      if @template.update_attributes(params[:template])
        format.html { redirect_to @template, notice: 'Template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templates/1
  # DELETE /templates/1.json
  def destroy
    @template = Template.find(params[:id])
    @template.destroy

    respond_to do |format|
      format.html { redirect_to templates_url }
      format.json { head :no_content }
    end
  end
end
