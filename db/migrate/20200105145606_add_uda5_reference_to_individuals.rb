class AddUda5ReferenceToIndividuals < ActiveRecord::Migration[5.2]
  def change
    add_reference :individuals, :uda5, foreign_key: true
  end
end
