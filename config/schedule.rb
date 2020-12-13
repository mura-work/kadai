# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# env :PATH, ENV['PATH'] ## パスの指定
# set :output, 'log/cron.log'  ## ログの出力先を指定
# set :environment, :development ## 環境の指定

# every 1.minute do
#     rake 'mail:sample' ## 毎分コード実行
# end



require File.expand_path(File.dirname(__FILE__) + "/environment")
rails_env = Rails.env.to_sym ## 環境の指定→developmentが入ってる
set :environment, rails_env
set :output, 'log/cron.log' ## ログの出力先を指定
every 2.minute do
    rake 'task_sample:sample' ## 毎分コード実行
end