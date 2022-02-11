class SendComplaintNotification
  attr_reader :complaint

  def initialize(complaint)
    @complaint = complaint
  end

  def call
    ComplaintsEventsMailer.send_notification_email(complaint).deliver
  end
end
