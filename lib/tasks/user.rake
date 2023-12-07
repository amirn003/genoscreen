namespace :user do
  desc "Enrich all users with Clearbit (async)"
  task update_all: :environment do
    users = User.all
    puts "Enqueuing update of #{users.size} users..."
    users.each do |user|
      #FakeJob.perform_later(user.id)
      # Delay the job
      FakeJob.set(wait: 1.minute).perform_later(user.id)
    end
    # rake task will return when all jobs are _enqueued_ (not done).
  end
end
