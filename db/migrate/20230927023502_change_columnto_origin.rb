class ChangeColumntoOrigin < ActiveRecord::Migration[7.0]
  def change
    rename_column :flights, :departure_id, :origin_id
  end
end
