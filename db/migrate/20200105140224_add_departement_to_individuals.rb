class AddDepartementToIndividuals < ActiveRecord::Migration[5.2]
  def change
    add_column :individuals, :departement, :integer
  end
end
