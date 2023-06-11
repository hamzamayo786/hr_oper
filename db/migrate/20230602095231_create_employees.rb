class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :age
      t.string :contact
      t.string :city
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end
