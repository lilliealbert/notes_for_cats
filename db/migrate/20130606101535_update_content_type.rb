class UpdateContentType < ActiveRecord::Migration
  def up
    change_column :notes, :content, :text
  end

  def down
    change_column :notes, :content, :string
  end
end
