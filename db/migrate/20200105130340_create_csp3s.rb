class CreateCsp3s < ActiveRecord::Migration[5.2]
  def change
    create_table :csp3s do |t|
      t.string :label

      t.timestamps
    end
  end
end
