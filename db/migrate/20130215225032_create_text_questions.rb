class CreateTextQuestions < ActiveRecord::Migration
  def up
    create_table :text_questions do |t|
      t.string :title
      t.references :base_question

      t.timestamps
    end
  end

  def down
    drop_table :text_questions
  end
end
