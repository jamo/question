class CreateRadioButtonOptions < ActiveRecord::Migration
  def up
    create_table :radio_button_options do |t|
      t.string :title
      t.references :radio_button_group

      t.timestamps
    end
  end

  def down
    drop_table :radio_button_options
  end
end
