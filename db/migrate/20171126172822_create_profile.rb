class CreateProfile < ActiveRecord::Migration[5.0]
  def self.up
    create_table :profile do |t|
      t.string  :username
      t.string  :area
      t.text    :biography
      t.string  :rank
    end
  end

  def self.down
    drop_table :profile
  end
end
