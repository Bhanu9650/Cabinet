class TimeTaken < ActiveRecord::Migration[5.2]
  def change
  	add_column :docs, :user_id, :integer
  	add_column :docs, :time_taken, :integer
  	add_column :docs, :abbr, :string
  end
end
