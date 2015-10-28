require 'rails_helper'
require 'migration_data/testing'
require_migration 'add_user'

describe AddUser do
  describe '#data' do
    it 'works' do
      expect { described_class.new.data }.to_not raise_exception
    end
  end

  describe '#rollback' do
    before do
      described_class.new.data
    end

    it 'works' do
      expect { described_class.new.rollback }.to_not raise_exception
    end
  end
end
