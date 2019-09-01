class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.integer :user_id
      t.text :site_name
      t.text :account_id
      t.text :account_key

      t.timestamps
    end
  end
end
