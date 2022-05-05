class RemoveStringColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :string
    remove_column :doctors, :string
  end
end
