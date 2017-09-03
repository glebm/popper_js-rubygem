# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

desc 'Update popper.js assets to the latest npm release'
task :update do # rubocop:disable Metrics/BlockLength
  require 'net/http'
  require 'uri'
  uri = URI.parse('https://unpkg.com/popper.js')
  fetch = lambda do
    response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
      http.request(Net::HTTP::Get.new(uri.path, 'User-Agent' => 'Ruby'))
    end
    case response
    when Net::HTTPSuccess
      response
    when Net::HTTPRedirection
      # unpkg.com returns a relative URL in the `location` field.
      uri.path = URI.parse(response['location']).path
      fetch.call
    else
      response.error!
    end
  end
  src = fetch.call.body
  # Remove the source mapping comment as this gem does not bundle source maps:
  src.sub!(%r{^//# sourceMappingURL=.*\n\z}, '')
  File.write(File.join('assets/javascripts/popper.js'), src)

  version_path = File.join('lib/popper_js/version.rb')
  File.write version_path,
             File.read(version_path)
                 .sub(/VERSION = '.*?'/,
                      "VERSION = '#{uri.path.split('@')[-1].split('/')[0]}'")

  STDERR.puts "Updated from #{uri}"
end

RSpec::Core::RakeTask.new(:spec)

task default: :spec
