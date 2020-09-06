class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :state
      t.string :holder
      t.date :lend_date
      t.date :returning_date

      t.timestamps
    end
  end
end
