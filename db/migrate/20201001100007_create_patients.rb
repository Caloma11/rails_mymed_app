class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :medical_history
      t.string :moms_name
    end
  end
end
