class AddCoverToRecipes < ActiveRecord::Migration
  def change
  	add_attachment :recipes, :cover
  end
end
