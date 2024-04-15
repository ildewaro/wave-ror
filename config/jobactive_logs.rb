module ActiveJob
  class LogSubscriberJson < ActiveSupport::LogSubscriber
    def perform_start(event)
      info do
        job = event.payload[:job]
        { event: "active_job_performing", job_class: job.class.name, job_id: job.job_id, queue: job.queue_name, enqueued_at: job.enqueued_at, arguments: job.arguments }.to_json
      end
    end
  end
end