#class Pin < ActiveRecord::Base
 #   belongs_to :user
  #  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
# end
 
 
class Pin < ActiveRecord::Base
    belongs_to :user

    has_attached_file :image, 
            :style => { :medium => "300x300>", :thumb => "100x100>" },
            :storage => :s3,
            :bucket  => ENV['udemy-pint']
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end