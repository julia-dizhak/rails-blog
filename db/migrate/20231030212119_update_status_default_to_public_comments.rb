class UpdateStatusDefaultToPublicComments < ActiveRecord::Migration[7.0]
  def change
    change_column_default :comments, :status, 'public'
  end
end
