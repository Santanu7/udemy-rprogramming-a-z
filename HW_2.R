#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

profit <- revenue - expenses
round(profit/1000)

profit_after_tax <- profit * 0.70
round(profit_after_tax/1000)

profit_margin <- profit_after_tax / revenue
round(profit_margin*100)

mean_profit <- mean(profit_after_tax)
mean_profit

months = c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")

good_months <- profit_after_tax > mean_profit
months[good_months]

bad_months <- profit_after_tax < mean_profit
months[bad_months]

best_month <- max(profit_after_tax)
months[profit_after_tax == best_month]

worst_month <- min(profit_after_tax)
months[profit_after_tax == worst_month]
