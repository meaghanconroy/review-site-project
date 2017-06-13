require 'rails_helper'

RSpec.describe User, type: :model do
    it { should have_valid(:first_name).when('John', 'Sally') }
    it { should_not have_valid(:first_name).when(nil,'') }

    it { should have_valid(:last_name).when('Smith', 'Swanson') }
    it { should_not have_valid(:last_name).when(nil,'') }

    it { should have_valid(:email).when('user@example.com', 'another@gmai.com') }
    it { should_not have_valid(:email).when(nil,'','urser','usersr@com' ) }

    it 'has a matching password confirmation for the password' do
      user = User.new
      user.password = "password"
      user.password_confirmation = 'anotherpassword'

      expect(user).to_not be_valid
      expect(user.errors[:password_confirmation]).to_not be_blank
    end
end
