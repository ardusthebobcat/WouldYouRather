class AddPhotosToVoteButtons < ActiveRecord::Migration
  def up
    add_attachment :questions, :picture_A
    add_attachment :questions, :picture_B
  end

  def down
    remove_attachment :questions, :picture_A
    remove_attachment :questions, :picture_B

    remove_column :questions, :picture_A
    remove_column :questions, :picture_B
  end


end
