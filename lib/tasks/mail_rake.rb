# namespace :mail do
#     desc 'Run tests'
#     task sample: :environment do
#         TestMailer.bacth_user.deliver_now
#     end
# end

class Task::mail_rake
    def self.mail_rake
        TestMailer.bacth_user.deliver_now
    end
end