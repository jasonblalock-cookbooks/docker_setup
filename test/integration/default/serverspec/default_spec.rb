require 'spec_helper'

describe 'docker::default' do
  describe package('docker-engine') do
    it 'is installed' do
      expect(subject).to be_installed
    end
  end

  describe service('docker') do
    it 'is enabled' do
      expect(subject).to be_enabled
    end

    it 'is running' do
      expect(subject).to be_running
    end
  end
end
