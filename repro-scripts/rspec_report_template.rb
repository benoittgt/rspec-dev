# frozen_string_literal: true

begin
  require "bundler/inline"
rescue LoadError => e
  $stderr.puts "Bundler version 1.10 or later is required. Please update your Bundler"
  raise e
end

gemfile(true) do

  gem "rspec", path: File.expand_path("../../repos/rspec", __FILE__)
  gem "rspec-core", path: File.expand_path("../../repos/rspec-core", __FILE__)
  gem "rspec-mocks", path: File.expand_path("../../repos/rspec-mocks", __FILE__)
  gem "rspec-expectations", path: File.expand_path("../../repos/rspec-expectations", __FILE__)
  gem "rspec-support", path: File.expand_path("../../repos/rspec-support", __FILE__)
end

puts "Ruby version is: #{RUBY_VERSION}"
require 'rspec/autorun'

RSpec.describe 'additions' do
  it 'returns 2' do
        # TracePoint.new(:call, :c_call){ |tp|
        #     puts tp.defined_class
        #     puts "  -> #{tp.method_id}"
        #     puts "  -> #{tp.path}:#{tp.lineno}"
    # }.enable { expect(1 + 1).to eq(3), 'custom eq message' }
    expect(1 + 1).to eq(3), 'custom eq message'
  end

  it 'display custom mock message' do
    # TracePoint.new(:call, :c_call){ |tp|
    #         puts tp.defined_class
    #         puts "  -> #{tp.method_id}"
    #         puts "  -> #{tp.path}:#{tp.lineno}"
    # }.enable { expect(Class).to receive(:food), 'custom eq message for receive' }
    expect(Class).to receive(:food), 'custom eq message for receive'
  end
end
