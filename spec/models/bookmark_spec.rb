require 'rails_helper'

RSpec.describe Bookmark, type: :model do

    describe '.create' do
      let(:title) { Faker::Lorem.sentence(2) }
      let(:url) { Faker::Internet.url }
      let(:bookmark) { Bookmark.create(title: title, url: url) }

      it { expect(bookmark.title).to eql title }
      it { expect(bookmark.url).to eql url }
      it { expect(bookmark.private?).to be false }
    end

    describe '.private?' do
      let(:title) { Faker::Lorem.sentence(2) }
      let(:url) { Faker::Internet.url }
      let(:bookmark) { Bookmark.create(title: title, url: url, private: true) }
      
      it { expect(bookmark.title).to eql title }
      it { expect(bookmark.url).to eql url }
      it { expect(bookmark.private?).to be true }
    end
end
