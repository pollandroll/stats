class RecodeUda5InIndividuals < ActiveRecord::Migration[5.2]
  CORRESPONDANCES = {
    'Région Parisienne': [75, 77, 78, 91, 92, 93, 94, 95],
    'Nord-Est': [8, 10, 51, 52, 2, 60, 80, 21, 58, 71, 89, 59, 62, 54, 55, 57, 88, 67, 68, 25, 39, 70, 90],
    'Nord-Ouest': [27, 18, 14, 44, 22, 16, 76, 28, 50, 49, 29, 17, 36, 61, 53, 35, 79, 37, 72, 56, 86, 41, 85, 45],
    'Sud-Ouest': [24, 33, 40, 47, 64, 9, 12, 31, 32, 46, 65, 81, 82, 19, 23, 87],
    'Sud-Est': [1, 7, 26, 38, 42, 69, 73, 74, 3, 15, 43, 63, 11, 30, 34, 48, 66, 4, 5, 6, 13, 83, 84, 20]
  }

  def up
    CORRESPONDANCES.each do |region, departements|
      Individual.where(departement: departements).update_all(uda5_id: Uda5.find_by(label: region).id)
    end
  end

  def down
    Individual.update_all(uda5_id: nil)
  end
end
