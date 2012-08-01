require "spec_helper"

describe DocumentOwner do
  before do 
    @document = mock
    @user = mock(:id => 1)

    Document.stub(:create => @document)
    Document.stub(:find_by_id => @document)
    Document.stub(:where => [@document])

    @user.extend DocumentOwner
  end

  it "should return documents if exists" do 
    @user.get_documents.should == [@document]
  end

  it "should create a new AR entry" do 
    @user.create_document({}).should == @document
  end

  it "should create a new AR entry" do 
    @user.get_document(1).should == @document
  end
end

