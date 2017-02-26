class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.column :title, :string
      t.column :collaborators, :string
      t.column :github, :string
      t.column :deployed,:string
      t.column :tech, :string
      t.column :description, :text

      t.timestamps
    end
  end
end
