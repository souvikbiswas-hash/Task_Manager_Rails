class Task < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :title, length: { minimum: 3, maximum: 100 }
    validates :status,
          inclusion: {
            in: ["Pending", "In Progress", "Completed"]
          },
          allow_blank: true
    validates :priority,
          inclusion: {
            in: ["Low", "Medium", "High"]
          },
          allow_blank: true     
end
