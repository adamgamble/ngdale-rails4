class CreateSermons < ActiveRecord::Migration
  def change
    create_table :sermons do |t|
      t.string :title
      t.text :body
      t.date :date
      t.text :summary

      t.timestamps
    end
  end
end
