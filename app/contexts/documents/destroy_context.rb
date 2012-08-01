module Documents
  class DestroyContext
    attr_accessor :user, :params

    def initialize(user, params)
      @user, @params = user, params
    end

    def execute
      # write code here
    end
  end
end

