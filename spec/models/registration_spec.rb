require 'spec_helper'

describe Registration do
  it do should have_valid(:email).when(
    'user@example.com',
    'user+2@another.com'
    )
end
  it do 
    should_not have_valid(:email).when(
      nil,
      '',
      'foo'
    )
  end

   it do 
      should have_valid(:first_name).when('John', 'Dan')
    end

    it do
      should_not have_valid(:first_name).when(
       nil,
       ''
       )
    end

     it do 
       should have_valid(:last_name).when(
        'Smith',
        'Marino'
        )
     end

     it do 
       should_not have_valid(:last_name).when(
        nil,
        ''
        )
     end

     it do should have_valid(:spot_number).when(
      5,
      20
     )
   end

      it do should_not have_valid(:spot_number).when(
        nil,
        0,
        61
     )
   end

      it do should have_valid(:parked_on).when(
        Date.today
        )
    end

      it do should_not have_valid(:parked_on).when(
        nil,
        '',
        )
  end
      describe 'parking' do
        it 'parks the car for today' do
          registration = FactoryGirl.build(:registration, parked_on: nil)  
          expect(registration.park).to eql(true)
          expect(registration.parked_on).to eql(Date.today)
   
      end
    end
end
