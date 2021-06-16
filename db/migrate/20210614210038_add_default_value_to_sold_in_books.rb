class AddDefaultValueToSoldInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column_default :books, :sold, from: nil, to: false
  end
end
