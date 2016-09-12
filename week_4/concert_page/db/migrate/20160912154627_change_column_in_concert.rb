class ChangeColumnInConcert < ActiveRecord::Migration[5.0]
  def change
  	change_column :concerts, :price, :string
  end
end
