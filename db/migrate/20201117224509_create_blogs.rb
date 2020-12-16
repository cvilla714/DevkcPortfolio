# frozen_string_literal: true

# Class to create the ActiveRecords
class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
