ActiveAdmin.register Cycle do
  
  permit_params :name, :slug
  
  actions :all
  
  index do
    column :id
    column "Название" do |name|
      name = Cycle.find(name.id).name
    end
    actions
  end
  
  controller do
    
    def show
      @Cycle = Cycle.friendly.find(params[:id])
    end
    
    def edit
      @Cycle = Cycle.friendly.find(params[:id])
    end
    
    def update
      @Cycle = Cycle.friendly.find(params[:id])
      super
    end
    
    def destroy
      @Cycle = Cycle.friendly.find(params[:id])
      super
    end
    
    private
    def Cycle_params
      params.require(:Cycle).permit(:name, :slug)
    end
  end
  
  form :html => { :multipart => true } do |f|
   f.inputs "Название" do
     f.input :name, :label => "Название"
   end
   f.actions
 end
end
