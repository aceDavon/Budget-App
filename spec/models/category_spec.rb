require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Group model' do
    before(:each) do
      @user = User.create full_name: 'Anonymus', email: 'anonymus@anon.co', password: 'password'
    end

    it 'accepts a valid name' do
      group = Category.create! name: 'McGyver', icon: 'https://shorturl.at/nxQZ7', user_id: @user.id
      expect(group).to be_valid
    end

    it 'accepts a valid icon url' do
      group = Category.create! name: 'McGyver', icon: 'https://shorturl.at/nxQZ7', user_id: @user.id
      expect(group).to be_valid
    end

    it 'accepts a valid user' do
      group = Category.create! name: 'McGyver', icon: 'https://shorturl.at/nxQZ7', user_id: @user.id
      expect(group).to be_valid
    end

    it 'accepts a valid name, icon and user' do
      group = Category.create! name: 'McGyver', icon: 'https://shorturl.at/nxQZ7', user_id: @user.id
      expect(group).to be_valid
    end

    it 'does not accept an invalid name' do
      group = Category.create name: '', icon: 'shorturl.at/nxQZ7', user_id: @user
      expect(group).to_not be_valid
    end

    it 'does not accept an invalid icon' do
      group = Category.create name: 'McGyver', icon: '', user_id: @user
      expect(group).to_not be_valid
    end
  end
end
