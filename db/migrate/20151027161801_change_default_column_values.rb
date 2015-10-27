class ChangeDefaultColumnValues < ActiveRecord::Migration
  def change
    change_column_default :questions, :votes_A, 0
    change_column_default :questions, :votes_B, 0
    change_column_default :questions, :total, 0 
  end
end
