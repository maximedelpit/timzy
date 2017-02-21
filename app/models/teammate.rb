class Teammate < ApplicationRecord
  #associations
  belongs_to :user
  belongs_to :team

  private

  def send_invite_email
    UserMailer.invitation(self).deliver_now
  end
end
