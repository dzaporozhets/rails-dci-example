module Documents
  class CreateContext
    attr_accessor :user, :params

    def initialize(user, params)
      @user, @params = user, params
    end

    def execute
      params.merge!(:user_id => user.id)
      @user.extend DocumentOwner
      @user.create_document(params)
    end
  end
end

