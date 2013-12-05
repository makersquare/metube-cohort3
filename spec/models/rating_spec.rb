require 'spec_helper'

describe Rating do
  let(:user) { User.create(first_name: 'Dean', last_name: 'Cody', email_address: 'test@example.com')}
  let(:video) { Video.create(user_id: user.id, youtube_id: '12345', title: 'Test') }

  describe 'validations' do
    describe 'presence' do
      context "when given a :user_id, :video_id, and :value" do
        it 'creates a new record' do
          rating = Rating.create(video_id: video.id, user_id: user.id, value: 1)
          expect(rating).to be_valid
          expect(Rating.count).to eq 1
        end
      end
      context "when given nothing" do
        it 'fails to create a new record' do
          rating = Rating.create
          expect(rating).to_not be_valid
          expect(Rating.count).to eq 0
          expect(rating.errors.full_messages).to include("Video can't be blank")
        end
      end
    end
    describe 'uniqueness' do
      context "when a rating of a video by a user already exists" do
        before { Rating.create(video_id: video.id, user_id: user.id, value: 1) }
        it "fails to create a new record" do
          rating = Rating.create(video_id: video.id, user_id: user.id, value: 5)
          expect(rating).to_not be_valid
          expect(Rating.count).to eq 1
          expect(rating.errors.full_messages).to include("Video has already been taken")
        end
      end
    end
    describe 'inclusion' do
      context "when :value is outside of 1..5" do
        it "fails to create a new record" do
          rating = Rating.create(video_id: video.id, user_id: user.id, value: 42)
          expect(rating).to_not be_valid
          expect(Rating.count).to eq 0
          expect(rating.errors.full_messages).to include("Value must be between 1 and 5")
        end
      end
    end
  end
end
