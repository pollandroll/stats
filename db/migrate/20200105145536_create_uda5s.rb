class CreateUda5s < ActiveRecord::Migration[5.2]
  def change
    create_table :uda5s do |t|
      t.string :label

      t.timestamps
    end
  end
end
