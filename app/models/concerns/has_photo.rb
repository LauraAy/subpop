##
# This concern is included in models that belong to a photo: Evidence, Title
# Page, and (future) Context Image.
#
module HasPhoto
  extend ActiveSupport::Concern

  included do
    belongs_to :photo
  end

  def dequeue_photo
    if photo.present? && photo.in_queue?
      photo.update_attribute 'in_queue', false
    end
  end

  def requeue_photo
    if photo.present? && !photo.in_queue?
      photo.update_attribute 'in_queue', true
    end
  end

end