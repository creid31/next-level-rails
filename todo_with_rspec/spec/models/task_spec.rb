require 'rails_helper'

RSpec.describe Task, type: :model do
  it "has a valid factory" do
    expect(build(:task)).to be_valid
  end

  it 'is valid with valid attributes' do
    task = create(:vote)
    expect(task).to be_valid
  end

  it 'is invalid without name' do
    task = build(:task, name: nil)
    expect(task).not_to be_valid
  end

  it 'is invalid without priority' do
    task = build(:task, priority: nil)
    expect(task).not_to be_valid
  end

  it 'is invalid without Due Date' do
    task = build(:invalid_task)
    expect(task.valid?).to eq(false)
  end

  # it 'belongs to User' do
  #   task = create(:task)
  #   expect(task.user).not_to eq(nil)
  # end
end
