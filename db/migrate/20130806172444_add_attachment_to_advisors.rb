class AddAttachmentToAdvisors < ActiveRecord::Migration
  def self.up
    add_attachment :advisors, :avatar
  end

  def self.down
    remove_attachment :advisors, :avatar
  end
end