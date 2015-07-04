## users model ruby file
## Trap App Inc.
## Shawn Niederriter
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :verify_password
      t.string :email
      t.string :location
      t.string :display_name
      t.string :genre
      t.string :salt
      t.timestamps
    end
  end
end

class CreateProfile < ActiveRecord::Migration
  def change_profile
    create_table :userProfile do |t|
      t.string :display_name
      t.string :genre
      t.string :location
      t.string :bio
      t.string :profile_picture #write to file and save path to db (need a default picture)
      t.string :audio_files #write to file and save path to db (can be null)
      t.integer :upload_number, :integer #integer
    end
  end
end

class UserStatistics < ActiveRecord::Migration
  def profile_stats
    create_table :userStats do |t|
      t.integer :followers
      t.integer :following
      t.integer :playlist_number
      t.integer :playlist_length
      t.string  :linked_users
    end
  end
end
