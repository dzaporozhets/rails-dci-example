require "spec_helper"

describe Documents::AllContext do
  before do 
    @document = mock
    @user = mock
  end

  it "should return documents if exists" do 
    @user.stub(:get_documents) { [@document] }
    Documents::AllContext.new(@user).execute.should == [@document]
  end

  it "should return empty array if no docs" do 
    @user.stub(:get_documents => [])
    Documents::AllContext.new(@user).execute.should == []
  end
end
