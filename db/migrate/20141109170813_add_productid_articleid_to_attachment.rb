class AddProductidArticleidToAttachment < ActiveRecord::Migration
  def change
    add_reference :attachments, :product, index: true
    add_reference :attachments, :article, index: true
  end
end
