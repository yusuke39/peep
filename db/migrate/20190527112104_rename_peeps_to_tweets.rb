class RenamePeepsToTweets < ActiveRecord::Migration[5.2]
  def change
    rename_table :peeps, :tweets
  end
end
