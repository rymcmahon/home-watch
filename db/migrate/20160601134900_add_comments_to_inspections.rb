class AddCommentsToInspections < ActiveRecord::Migration
  def change
    add_column :inspections, :comments, :text
  end
end
