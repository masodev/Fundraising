class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :website, :string
    add_column :projects, :string, :string
    add_column :projects, :pledging_ends_on, :string
    add_column :projects, :date, :string
  end
end
