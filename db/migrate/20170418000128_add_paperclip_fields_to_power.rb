class AddPaperclipFieldsToPower < ActiveRecord::Migration[5.0]
  def change
    add_column :powers, :image_file_name,    :string
    add_column :powers, :image_content_type, :string
    add_column :powers, :image_file_size,    :integer
    add_column :powers, :image_updated_at,   :datetime
  end
end
