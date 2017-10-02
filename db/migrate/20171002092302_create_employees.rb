class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :title
      t.integer :empid
      t.string :firstname
      t.string :midname
      t.string :lastname
      t.string :bloodtype
      t.string :nationality
      t.string :address
      t.string :city
      t.string :state
      t.string :pin
      t.integer :homenumber
      t.integer :mobile
      t.string :email
      t.date :joined_at
      t.date :birth_date
      t.string :gender
      t.string :marital

      t.timestamps
    end
  end
end
