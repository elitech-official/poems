ActiveAdmin.register Poem do
  
  permit_params :name, :cycle_id, :text, :slug
  
  actions :all
  
  index do
    column "Название" do |name|
      name = Poem.find(name.id).name
    end
    column "Цикл" do |m|
      cycle = Cycle.find(m.cycle_id).name
    end 
    actions
  end
  
  controller do
    
    def show
      @poem = Poem.friendly.find(params[:id])
    end
    
    def edit
      @poem = Poem.friendly.find(params[:id])
    end
    
    def update
      @poem = Poem.friendly.find(params[:id])
      super
    end
    
    def destroy
      @poem = Poem.friendly.find(params[:id])
      super
    end
    
    private
    def Poem_params
      params.require(:Poem).permit(:name, :cycle_id, :text, :slug)
    end
  end
  
  form :html => { :multipart => true } do |f|
   f.inputs "Название" do
     f.input :name, :label => "Название"
   end
   
   f.inputs 'Текст' do
     f.cktext_area :text
   end
   
   f.inputs "Цикл" do
     f.select :cycle_id, options_from_collection_for_select(Cycle.all, 'id', 'name')
   end
   f.actions
 end
  
  
  
end
