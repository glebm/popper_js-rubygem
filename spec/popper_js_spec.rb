# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PopperJs do
  it 'has a version number' do
    expect(PopperJs::VERSION).not_to be nil
  end

  it 'has the assets' do
    expect(File).to exist('assets/javascripts/popper.js')
  end
end
