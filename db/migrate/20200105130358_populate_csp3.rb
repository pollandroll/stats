class PopulateCsp3 < ActiveRecord::Migration[5.2]
  LABELS = %w[CSP+ CSP- Inactifs]

  def up
    LABELS.each { |label| Csp3.create!(label: label) }
  end

  def down
    LABELS.each { |label| Csp3.find_by(label: label).destroy }
  end
end
