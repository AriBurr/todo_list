class Item < ApplicationRecord

  def self.check_complete
    Item.where("complete = 'true'")
  end

  def self.check_incomplete
    Item.where("complete = 'false'")
  end

  def self.check_progress
    comp_ct = Item.where("complete = 'true'").count.to_f
    total = Item.all.count
    (comp_ct / total) * 100
  end

end
