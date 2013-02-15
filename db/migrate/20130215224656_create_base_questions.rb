class CreateBaseQuestions < ActiveRecord::Migration
  def up
    create_table :base_questions do |t|
      t.string :title

      t.timestamps
    end
  end

  def down
    drop_table :base_questions
  end
end
