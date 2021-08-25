class AddedUpdatedByColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :updated_by, :string
  end
end
