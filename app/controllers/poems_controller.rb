class PoemsController < ApplicationController
  
  def index
    if params[:cycle]
      @poems = Poem.where(cycle: params[:cycle])
    else
      @poems = Poem.all
    end
  end

  def show
    @poem = Poem.friendly.find(params[:id])
  end
  
  def title
    render 'layouts/title'
  end
  
  def about_me
    render 'layouts/about_me'
  end
  
  def contacts
    render 'layouts/contacts'
  end
end
