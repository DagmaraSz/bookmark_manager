require 'spec_helper'
require './app/models/user'

describe User do
  subject(:user) { described_class.new }

  it 'has an emal' do
    expect(user).to respond_to(:email)
  end

  it 'has a password' do
    expect(user).to respond_to(:password_digest)
  end
end
