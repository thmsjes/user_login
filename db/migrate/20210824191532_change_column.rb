class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :vehicles, :type, :kind
    
  end
end
