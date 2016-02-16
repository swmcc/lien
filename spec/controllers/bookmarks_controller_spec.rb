require 'rails_helper'

describe BookmarksController, type: :controller do
  describe 'GET index' do
    let(:bookmarks) { Array.new(5) { Bookmark.create() } }

    it 'returns the bookmarks in created_at descending order' do
      get 'index'

      expect(assigns(:bookmarks)).to match_array(bookmarks)
      expect(assigns(:bookmarks).first.id).to eq bookmarks.last.id
    end
  end
end
