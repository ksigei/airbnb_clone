class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :user_id
      t.string :place_id
      t.string :text

      t.timestamps
    end
  end
end
