require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  context 'in a create' do
    let(:title) { Faker::Lorem.sentence(2) }
    let(:url) { Faker::Internet.url }
    let(:bookmark) do
      Bookmark.create(title: title, url: url)
    end

    it { expect(bookmark.title).to eql title }
    it { expect(bookmark.url).to eql url }
  end
end
