class Imagepost < ApplicationRecord
    has_one_attached :image,dependent: :destroy
    validates :title,:image,presence: true

    belongs_to :user
     validates :image, attached: true,
                    content_type: ['image/png', 'image/jpeg']


end
