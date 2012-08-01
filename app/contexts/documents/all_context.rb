module Documents
  class AllContext
    attr_accessor :user

    def initialize(user)
      @user = user
    end

    def execute
      @user.extend DocumentOwner
      @user.get_documents
    end
  end
end

