class AddReferencesToDestinations < ActiveRecord::Migration[5.1]
 def change
  change_table :destinations do |t|
    t.references :user, foreign_key: true
  end
end
end
