module Documents
  class GetContext
    attr_accessor :user, :id

    def initialize(user, id)
      @user, @params = user, id
    end

    def execute
      @user.extend DocumentOwner
      @user.get_document(id)
    end
  end
end

