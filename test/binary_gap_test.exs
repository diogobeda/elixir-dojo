defmodule BinaryGapTest do
    use ExUnit.Case
    test "arg 9" do
        value = BinaryGap.max_gap_length(9)
        assert value == 2
    end

    test "arg 10" do
        value = BinaryGap.max_gap_length(10)
        assert value == 1
    end

    test "arg 37" do
        value = BinaryGap.max_gap_length(37)
        assert value == 2
    end

    test "arg 1041" do
        value = BinaryGap.max_gap_length(1041)
        assert value == 5
    end

    test "arg 15" do
        value = BinaryGap.max_gap_length(15)
        assert value == 0
    end

    test "arg 1400" do
        value = BinaryGap.max_gap_length(1400)
        assert value == 1
    end
end