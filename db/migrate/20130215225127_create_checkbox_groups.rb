class CreateCheckboxGroups < ActiveRecord::Migration
  def up
    create_table :checkbox_groups do |t|
      t.string :title
      t.references :base_question

      t.timestamps
    end
  end


  def down
    drop_table :checkbox_groups
  end
end
