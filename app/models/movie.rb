class Movie < ApplicationRecord
  validates :name, presence: true, length: {maximum: 160}, uniqueness: true
  validates :year, length: {maximum: 45}
  validates :image_url, length: {maximum: 150}

  private
    def self.search(search, status)
      if search
        if status == "all"
          Movie.where(['name LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%"])        
        else 
          Movie.where(['name LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%"]).where(is_showing: status)
        end
      else
        if status == "all"
          Movie.all
        else
          Movie.where(is_showing: status)
        end
      end
    end
end
