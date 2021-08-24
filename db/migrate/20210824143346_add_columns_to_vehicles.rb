class AddColumnsToVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :created_by, :string
    add_column :vehicles, :created_at, :datetime
  end
end
