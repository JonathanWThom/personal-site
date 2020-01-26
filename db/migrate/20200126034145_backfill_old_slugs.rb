class BackfillOldSlugs < ActiveRecord::Migration[5.0]
  def change
    Post.find_each(&:save)
  end
end
