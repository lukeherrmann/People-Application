class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(people_params)
 
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end
  
  def update
    @person = Person.find(params[:id])
  
    if @person.update(person_params)
      redirect_to people_path
    else
      render :edit
    end
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end
  
  private
 
    def people_params
      params.require(:person).permit(:name, :age, :alive)
    end
end
