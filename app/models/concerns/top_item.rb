module TopItem
    def top_item(itemtype, n)
        itemtype.all.select{ |b| b.ratings.count > 0 }.sort_by{ |b| -(b.average_rating||0) }.take(n)
    end
end
