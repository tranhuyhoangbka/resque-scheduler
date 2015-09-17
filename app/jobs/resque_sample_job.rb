class ResqueSampleJob
  @queue = :resque_sample_job

  def self.perform
    path = File.expand_path("log/resque_sample.log", Rails.root)
    File.open(path, "a") do |f|
      f.puts "yepppppppppppp ok"
    end
  end
end
