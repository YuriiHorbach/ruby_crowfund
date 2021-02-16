class AddColumnToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :will_achieve, :date
  end
end
