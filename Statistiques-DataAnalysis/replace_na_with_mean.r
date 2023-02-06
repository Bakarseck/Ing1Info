replace_na_with_mean = function(df) {
    colMeans = colMeans(df, na.rm=TRUE)
    for (x in l: length(df)) {
       df[is.na(df)] <- lapply(df, function(x) ifelse(is.na(x), colMeans[names(x)], x))
    }
    return (df)
}

mean(df$Rdt, na.rm=TRUE)