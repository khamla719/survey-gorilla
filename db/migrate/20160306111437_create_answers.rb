class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :responder_id
      t.integer :question_id

      t.timestamps(null: false)
    end
  end
end
