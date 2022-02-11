# frozen_string_literal: true

class ComplaintsEventsMailer < ApplicationMailer
  require "sendgrid-ruby"
  include SendGrid
  default from: "agustin.santana@michelada.io"

  def send_notification_email(complaint)
    @complaint = complaint
    status = Complaint.human_attribute_name("status.#{@complaint.status}")

    mail(to: @complaint.user.email,
         subject: "Mi Ciudad: Actividad reciente de tu reporte ciudadano [#{status}]")
  end
end
