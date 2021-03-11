class CreateSneakers < ActiveRecord::Migration[6.1]
  def change
    create_table :sneakers do |t|
      t.float :size
      t.float :condition
      t.text :name
      t.float :price

      t.timestamps
    end
  end
end
