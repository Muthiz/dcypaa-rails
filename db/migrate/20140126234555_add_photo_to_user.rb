class AddPhotoToUser < ActiveRecord::Migration
  def self.up
    add_column :events, :flier_file_name, :string # Original filename
    add_column :events, :flier_content_type, :string # Mime type
    add_column :events, :flier_file_size, :integer # File size in bytes
  end

  def self.down
    remove_column :events, :flier_file_name
    remove_column :events, :flier_content_type
    remove_column :events, :flier_file_size
  end
end
