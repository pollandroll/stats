class RecodeCsp3InIndividuals < ActiveRecord::Migration[5.2]
  def up
    Individual.where(cs1: (1..4)).update_all(csp3_id: Csp3.find_by(label: 'CSP+').id)
    Individual.where(cs1: (5..6)).update_all(csp3_id: Csp3.find_by(label: 'CSP-').id)
    Individual.where(cs1: (7..8)).update_all(csp3_id: Csp3.find_by(label: 'Inactifs').id)
  end

  def down
    Individual.update_all(csp3_id: nil)
  end
end
