require 'spec_helper'

describe User do
  describe 'validations' do
    describe 'presence' do
      context 'when given a :first_name, :last_name, and :email_address' do
        it 'creates a new record' do
          user = User.create(first_name: 'Dean', last_name: 'Cody', email_address: 'test@example.com')
          expect(user).to be_valid
          expect(User.count).to eq 1
        end
      end
      context 'when given nothing' do
        it 'fails to create a record' do
          user = User.create
          expect(user).to_not be_valid
          expect(User.count).to eq 0
          expect(user.errors.full_messages).to include("First name can't be blank")
        end
      end
    end
    describe 'uniqueness' do
      context 'when given an :email_address that already exists' do
        before { User.create(first_name: 'Dean', last_name: 'Cody', email_address: 'test@example.com') }
        it "fails to create a new record" do
          user = User.create(first_name: 'Bob', last_name: 'Dole', email_address: 'test@example.com')
          expect(user).to_not be_valid
          expect(User.count).to eq 1
          expect(user.errors.full_messages).to include("Email address has already been taken")
        end
      end
    end
  end
end
