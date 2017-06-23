class AddColumnYearToClassRoom < ActiveRecord::Migration
  def change
    add_column :class_rooms, :year, :string
  end
end
