# frozen_string_literal: true

class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :user_id
      t.string :name
      t.string :city
      t.string :state
      t.string :slug
      t.decimal :latitude, precision: 15, scale: 10
      t.decimal :longitude, precision: 15, scale: 10

      t.timestamps
    end

    add_index :chapters, :state
    add_index :chapters, :slug
  end
end
