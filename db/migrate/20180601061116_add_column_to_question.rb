class AddColumnToQuestion < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions,:company_id,:integer
  end
end
