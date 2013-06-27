class CreateNotes < ActiveRecord::Migration
  def change
  	create_table :notes do |t|
  		t.string :title, :content
  		t.timestamps
  	end
  end
end
