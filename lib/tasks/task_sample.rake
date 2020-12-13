namespace :task_sample do
    desc "メールの送付"
    task sample: :environment do 
        TestMailer.bacth_user.deliver_now
    end
end
