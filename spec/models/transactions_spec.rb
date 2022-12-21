require "rails_helper"

RSpec.describe Transaction, type: :model do
  describe 'Expense model' do
    before(:each) do
      @user = User.create full_name: 'Anonymus', email: 'anonymus@anon.co', password: 'password'
      @group = Category.create name: 'McGyver', icon: 'https://shorturl.at/nxQZ7', user_id: @user.id
    end

    it 'accepts a valid name and amount' do
      expense = Transaction.create! name: 'Pork ribs', amount: 13, user_id: @user.id, category_id: @group.id
      expect(expense).to be_valid
    end

    it 'accepts a valid name, amount and user_id' do
      expense = Transaction.create! name: 'Pork ribs', amount: 13, user_id: @user.id, category_id: @group.id
      expect(expense).to be_valid
    end

    it 'does not accept an invalid name' do
      expense = Transaction.create name: '', amount: 13, user_id: @user.id, category_id: @group.id
      expect(expense).to_not be_valid
    end

    it 'does not accept an invalid amount' do
      expense = Transaction.create name: 'Pork ribs', amount: '', user_id: @user.id, category_id: @group.id
      expect(expense).to_not be_valid
    end

    it 'does not accept an invalid user_id' do
      expense = Transaction.create name: 'Pork ribs', amount: 13, user_id: nil, category_id: @group.id
      expect(expense).to_not be_valid
    end

    it 'does not accept an invalid name, amount and user_id' do
      expense = Transaction.create name: '', amount: '', user_id: nil, category_id: @group.id
      expect(expense).to_not be_valid
    end
  end
end