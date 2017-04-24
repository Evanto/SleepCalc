class Sleep < ApplicationRecord
  validates :hours, presence: true
  # presence: true tchecks that each of the named fields is present and doesnt allow to submit if they are not present

  validates :time_select

      private

      def time_select
      #  if Sleep.hours.to_s == "0001-01-01 00:00:00"
      # if Sleep.last.hours.to_s == "2000-01-01 00:00:00 UTC"
      # if Sleep.last.hours.time == "0001-01-01 00:00:00"
        if Sleep.create == nil
          errors.add(:hours, "Oh no you didn't enter that garbage time on my watch!")
        end
      end
  #end

  #validates :hours, :inclusion => { :in => Sleep.new.list },
  #                            :message => "Please let us know how you heard about us",
  #                            :on => :create

#  validates :hours, :minutes, presence: true, length: {
#maximum: 21,
#too_long: ": Must select a product"
# }
  #   validates :hours > 0
  # validates :hours, inclusion: { in: 10..55 }
  #validate :time_selected?


#def time_selected?
  #return if [hour.blank?, minutes.blank?].any?
  #if hours > 0 & minutes > 0
    #errors.add(:deadline, 'must be possible')
  #end
#end
end
