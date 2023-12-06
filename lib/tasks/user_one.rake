namespace :user_one do
  desc "Enrich a given user with Clearbit (sync)"
  task update: :environment do
    user = User.find(ENV["USER_ID"])
    puts "Enriching #{user.email}..."
    FakeJob.perform_now(user.id)
    # rake task will return when job is _done_
  end
end
