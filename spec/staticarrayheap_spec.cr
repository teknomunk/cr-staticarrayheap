require "./spec_helper"

describe StaticArrayHeap do
  # TODO: Write tests

	describe "#empty?" do
		it "returns true for an empty heap" do
			s = StaticArrayHeap(Int32,10).new
			s.empty?.should be_true
		end
		it "returns false for a heap with elements" do
			s = StaticArrayHeap(Int32,10).new
			s.push(15)
			s.empty?.should be_false
			s.size.should eq(1)
		end
	end
	describe "#full?" do
		it "returns true for a full heap" do
			s = StaticArrayHeap(Int32,1).new
			s.push(15)
			s.full?.should be_true
		end
		it "returns false for a heap with space" do
			s = StaticArrayHeap(Int32,1).new
			s.full?.should be_false
		end
	end
	describe "#next" do
		it "returns the minimum element in the heap" do
			s = StaticArrayHeap(Int32,3).new
			[5,10,1].each {|i| s.push(i) }
			s.size.should eq(3)
			s.next.should eq(1)
		end
	end
	describe "#pop" do
		it "removes the minimum element in the heap" do
			s = StaticArrayHeap(Int32,10).new
			[5,10,1,3].each {|i| s.push(i) }
			s.size.should eq(4)
			s.next.should eq(1)
			s.pop
			s.next.should eq(3)
			s.pop
			s.next.should eq(5)
			s.pop
			s.next.should eq(10)
		end
	end
end
