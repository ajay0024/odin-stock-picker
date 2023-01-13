def stock_picker(arr)
    diff =0
    res = [0 , 0]
    arr.each_with_index do |x,xidx|
        arr[xidx+1..arr.length].each_with_index do |y,yidx|
            if (y-x)>arr[res[1]]-arr[res[0]]
                res = [xidx,xidx+1+yidx] 
            end
        end
    end
    return res
end


p stock_picker([17,3,6,9,15,8,6,1,10])