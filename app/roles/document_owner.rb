module DocumentOwner
  def create_document(params)
    Document.create(params)
  end

  def get_documents
    Document.where(:user_id => self.id)
  end

  def get_document id
    Document.find_by_id(id)
  end
end
