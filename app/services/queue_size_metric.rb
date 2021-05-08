require "aws-sdk"
class QueueSizeMetric
  def initialize
  end

  def put(value)
    client = Aws::CloudWatch::Client.new
    client.put_metric_data({ namespace: "Sidekiq", metric_data: [{
                                                                   metric_name: "count", value: value,
                                                                   dimensions: [{ name: "env", value: "master" }],
                                                                   timestamp: Time.now,
                                                                   unit: "Count",

                                                                 }
    ] })
  end
end