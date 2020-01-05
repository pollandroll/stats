class PopulateDepartement < ActiveRecord::Migration[5.2]
  def up
    metro_condition = 'LENGTH(cantville) = 4'
    corsica_condition = "cantville ~ '^2(A|B)'"
    metro_update = "departement = CAST(SUBSTRING(cantville for 2) AS INTEGER)"

    Individual.where(metro_condition).where(corsica_condition).update_all(departement: 20)
    Individual.where(metro_condition).where.not(corsica_condition).update_all(metro_update)
    Individual.where('LENGTH(cantville) > 4').update_all(
      "departement = CAST(SUBSTRING(cantville for 3) AS INTEGER)"
    )
  end

  def down
    Individual.update_all(departement: nil)
  end
end
