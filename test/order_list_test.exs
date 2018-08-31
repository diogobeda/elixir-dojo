defmodule OrderListTest do
    use ExUnit.Case
    require TimeFrame

    test "order 2 items" do
        assert OrderList.sort([2, 1]) == Enum.sort([1, 2])
    end

    test "order 3 items" do
        assert OrderList.sort([3, 1, 2]) == Enum.sort([1, 2, 3])
    end

    test "order 100 random items" do
        random_list = 0..9999
            |> Enum.to_list
            |> Enum.map(fn _ -> Enum.random(0..1000) end)

        TimeFrame.execute "sort" do
            result = OrderList.sort(random_list)
        end
        assert result == Enum.sort(random_list)
    end
end