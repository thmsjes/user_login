class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :admin
      t.string :all
      t.string :sales
      t.string :sales_manager
      t.string :service
      t.string :advisor
      t.string :dispatch
      t.string :tech
      t.string :parts
      t.string :detail
      t.timestamps
    end
  end
end
