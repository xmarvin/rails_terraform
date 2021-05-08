Aws.config.update(region: "us-west-2",
                  access_key_id: ENV["AWS_ACCESS_KEY"],
                  secret_access_key: ENV["AWS_SECRET_KEY"],
                  instance_profile_credentials_retries: 5,
                  instance_profile_credentials_timeout: 2
)
