#"10010001000000110000000".match(/([0])+1/g).reduce((ac,cur)=>ac.length>cur.length?ac:cur, "0").length - 1;
defmodule BinaryGap do
    def max_gap_length(n) do
        bin_rep = Integer.to_string(n, 2)
        [_, first | blocks] = String.split(bin_rep, "1")
        max_length_block = compare_blocks(blocks, first)
        String.length(max_length_block)
    end

    defp compare_blocks([_], acc) do
        acc
    end

    defp compare_blocks([first | rest], acc) do
        max_value = compare_length(first, acc)
        compare_blocks(rest, max_value)
    end

    defp compare_length(s1, s2) do
        if String.length(s1) > String.length(s2) do
            s1
        else
            s2
        end
    end
end

#  1001