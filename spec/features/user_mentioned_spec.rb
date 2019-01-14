RSpec.feature 'user mentioned' do
    let(:dummy_email){ 'someone@somewhere.com' }
    let(:dummy_password) { 'password' }
    let(:dummy_username) { 'Ratchet' }
    let(:dummy_name) { 'furball' }
    
    before {
      
        start_sign_up
        sign_up_name(dummy_name)
        sign_up_username(dummy_username)
        sign_up_email(dummy_email)
        sign_up_password(dummy_password)
        submit_sign_up
    }

    context ' we can see which users have been mentiond' do

        it 'returns a list of users mentioned' do 
            p ENV['EMAIL_USER']
            expect(post_message('@Ratchet')).to eql(true)
        end


    end
end