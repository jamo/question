class CreateRadioButtonGroups < ActiveRecord::Migration
  def up
    create_table :radio_button_groups do |t|
      t.string :title
      t.references :base_question

      t.timestamps
    end
  end

  def down
    drop_table :radio_button_groups
  end
end
