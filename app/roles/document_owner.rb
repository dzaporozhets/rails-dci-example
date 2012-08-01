module DocumentOwner
  def create_document(params)
    Document.create(params)
  end

  def get_documents
    Document.where(:user_id => self.id)
  end
end
