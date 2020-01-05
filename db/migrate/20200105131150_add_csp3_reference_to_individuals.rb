class AddCsp3ReferenceToIndividuals < ActiveRecord::Migration[5.2]
  def change
    add_reference :individuals, :csp3, foreign_key: true
  end
end
