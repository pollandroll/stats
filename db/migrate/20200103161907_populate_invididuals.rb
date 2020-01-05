class PopulateInvididuals < ActiveRecord::Migration[5.2]
  def change
    path = Rails.root.join('data', 'FD_INDCVI_2016.csv')

    ActiveRecord::Base.connection.exec_query(
      "COPY individuals(cantville, nummi, achlr, aemmr, aged, ager20, agerev, agerevq, anai, anemr, apaf, arm, ascen, bain, bati, catiris, catl, catpc, chau, chfl, chos, clim, cmbl, couple, cs1, cuis, dept, derou, dipl_15, dnai, eau, egoul, elec, empl, etud, garl, hlml, iletud, ilt, immi, inai, inatc, infam, inper, inperf, ipondi, iran, iris, lienf, lprf, lprm, metrodom, moco, modv, na17, na5, naidt, nbpi, ne17fr, ne24fr, ne3fr, ne5fr, nenfr, nperr, numf, oridt, rech, region, sani, sanidom, sexe, sfm, stat_conj, statr, stocd, surf, tact, tactd16, tp, trans, triris, typc, typfc, typl, typmc, typmr, voit, wc) FROM '#{path}' WITH (DELIMITER ';', FORMAT csv, HEADER true);",
      'SQL'
    )
  end
end
