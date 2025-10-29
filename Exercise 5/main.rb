# Exercise 5

class LaunchDiscussionWorkflow

  def initialize(discussion, host, participants_emails)
    @discussion = discussion
    @host = host # I'm going to keep this, assuming that it is used in an unshown method.
    @participants_emails = participants_emails
    @participants = []
  end

  # Expects @participants array to be filled with User objects
  def start_discussion
    return unless valid?
    run_callbacks(:create) do
      ActiveRecord::Base.transaction do
        discussion.save!
        create_discussion_roles!
        @successful = true
      end
    end
  end

  def generate_participants
    return if @participants_emails.blank?
    @participants_emails.each do |email|
      @participants.append(User.new(each))
    end
  end

  # ...

end

class User

  def initialize(email)
    @email = email
    @name = email.split("@")[0]
    @password = Devise.friendly_token
  end

  def find(parameter)
    # pretend this does something that makes sense
  end

end

discussion = Discussion.new(title: "fake", ...) # I'm also going to assume that this class exists but is not shown
host = User.find(42)
participants = ["fake1@example.com", "fake2@example.com", "fake3@example.com"]

workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
workflow.generate_participants
workflow.start_discussion