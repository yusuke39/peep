class RenameTweetsToPeeps < ActiveRecord::Migration[5.2]
  def change
    rename_table :tweets, :peeps
  end
end
