require 'spec_helper'
require 'urbanairship'

describe Urbanairship do
  describe '.configure' do
    it 'defines the "log_path"' do
      Urbanairship.configure do |config|
        config.log_path = '/tmp'
      end

      expect(Urbanairship.configuration.log_path).to eq('/tmp')
    end

    it 'defines the "log_level"' do
      Urbanairship.configure do |config|
        config.log_level = Logger::WARN
      end

      expect(Urbanairship.configuration.log_level).to eq(Logger::WARN)
    end

    it 'defines the request timeout' do
      Urbanairship.configure do |config|
        config.timeout = 60
      end

      expect(Urbanairship.configuration.timeout).to eq(60)
    end
  end
end

