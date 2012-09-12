require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"My first App"}

  subject {page}

  describe "/static_pages/home" do
    before {visit root_path}

    it { should have_selector('h1', :text => 'Book Index')    }
    it { should have_selector('title', :text => full_title(''))  }

    it { should_not have_selector('title', :text => "| Home") }

  end

end
