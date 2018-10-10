


describe Space do

  before(:each) do
    @new_user = User.create(email: 'test@example.com', password: 'password123')
  end

  describe '.create' do
    it 'should create a new space and add it to the database' do
      new_space = Space.create(id: 1, name: 'robbiespace', address: 'xyz', price: '100', description: 'abc', lister_id: @new_user.id)
      expect(new_space.name).to eq 'robbiespace'
      expect(new_space).to respond_to :id
    end
  end
  describe '.update' do
  end
  describe '.find' do
  end
  describe '.all' do
    it 'should display all spaces' do
      DatabaseConnection.insert("spaces", "name", "'robbiespace'", "name")

      expect(Space.all).to include("robbiespace")

    end
  end
  describe '.delete' do
    it 'should delete a space from the database based on name and user id' do
      new_space = Space.create(id: 1, name: 'robbiespace', address: 'xyz', price: '100', description: 'abc', lister_id: @new_user.id)
      Space.delete(new_space.id)
      spaces = Space.all
      name = spaces.map(&:name)
      expect(name).not_to include("robbiespace")
    end
  end
  describe '.list' do
    # MEETING FIRST
  end
end
