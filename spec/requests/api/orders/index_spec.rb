RSpec.describe "GET /api/products", type: :request do
    let!(:product) {create_list(:product, 3)}

    before do
        get '/api/products'
    end

    it 'is expected to respond with status code 200 ' do
        expect(subject.status). to eq 200
    end

    it { is_expected.to have_http_status 200 }

    it 'is expected to return a list of products' do
      expect(response_json['products'].count).to eq 3
    end
end

