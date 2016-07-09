require 'rails_helper'

RSpec.describe "bookmarks/index", type: :view do
  before(:each) do
    allow(view).to receive_messages(:will_paginate => nil)
    assign(:bookmarks, [
      Bookmark.create!(
        :title => "Title",
        :url => "Url"
      ),
      Bookmark.create!(
        :title => "Title",
        :url => "Url"
      )
    ])
  end


  it "renders a list of bookmarks" do
    allow(view).to receive_messages(:will_paginate => nil)

    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
