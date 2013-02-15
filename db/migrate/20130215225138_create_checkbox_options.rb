class CreateCheckboxOptions < ActiveRecord::Migration
  def up
    create_table :checkbox_options do |t|
      t.string :title
      t.references :checkbox_group

      t.timestamps
    end
  end

  def down
    drop_table :checkbox_options
  end
end
