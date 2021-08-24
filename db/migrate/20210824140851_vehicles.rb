class Vehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :stock_number
      t.integer :year
      t.string :make
      t.string :model
      t.string :type
      t.integer :mileage
      t.integer :purchase_price
      t.integer :recon_budget
      t.string :location
      t.string :status
      t.string :notes
        
      end

  end
end
