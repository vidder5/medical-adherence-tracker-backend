class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.string :contact_no
      t.string :address
      t.binary :photo

      t.timestamps
    end
  end
end
