class PopulateUda5 < ActiveRecord::Migration[5.2]
  LABELS = ['Région Parisienne', 'Nord-Est', 'Nord-Ouest', 'Sud-Ouest', 'Sud-Est']

  def up
    LABELS.each { |label| Uda5.create!(label: label) }
  end

  def down
    LABELS.each { |label| Uda5.find_by(label: label).destroy }
  end
end
