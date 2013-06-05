class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
    	t.string "name", :null => false
    	t.string "username", :null => false
        t.string "password", :limit => 8, :null => false 
        t.integer "std", :null => false
        t.string "section", :null => false
        t.string "email", :default => "", :null => false
        t.integer "mobile", :limit => 10
      t.timestamps
    end


  end

  def down
  	drop_table :students
end
end
