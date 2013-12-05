require 'spec_helper'

describe Video do
  let(:user) { User.create(first_name: 'Dean', last_name: 'Cody', email_address: 'test@example.com')}
  describe 'validations' do
    describe 'presence' do
      context 'when given a :user_id, :youtube_id, and :title' do
        it 'creates a new record' do
          video = Video.create(user_id: user.id, youtube_id: '12345', title: 'Test')
          expect(video).to be_valid
          expect(Video.count).to eq 1
        end
      end
      context 'when given nothing' do
        it 'fails to create a record' do
          video = Video.create
          expect(video).to_not be_valid
          expect(Video.count).to eq 0
          expect(video.errors.full_messages).to include("Title can't be blank")
        end
      end
    end
  end
  describe '#avg_rating' do
    let(:video) { Video.create(user_id: user.id, youtube_id: '12345', title: 'Test') }
    context "when there are no ratings" do
      it 'returns 0' do
        expect(video.avg_rating).to eq 0
      end
    end
    context "when there are ratings" do
      before do
        5.times do |num|
          video.ratings.create(user_id: num, value: 3)
        end
      end
      it 'returns the average' do
        expect(video.avg_rating).to eq 3
      end
    end
  end
end