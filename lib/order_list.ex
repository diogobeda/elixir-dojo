defmodule OrderList do
    def sort(list) do
       do_sort(list, [])
    end

    defp do_sort([first | rest], []) do
        do_sort(rest, [first])
    end

    defp do_sort([first | rest], acc) do
        do_sort(rest, put_sorted(acc, first))
    end

    defp do_sort([], acc) do
        acc
    end

    defp put_sorted([first | []], number) do
        if first <= number do
            [first, number]
        else
            [number, first]
        end
    end

    defp put_sorted([first | rest], number) do
        if number <= first do
            [number] ++ [first] ++ rest
        else
            [first] ++ put_sorted(rest, number)
        end
    end
end
