//cerner_2tothe5th_2022
pub fn coin_change(coins: &[usize], amount: usize) -> Option<i32> {
    let mut dp = vec![None; amount + 1];
    dp[0] = Some(0);

    for i in 0..=amount {
        for &coin in coins {
            if i >= coin {
                dp[i] = match dp[i - coin] {
                    Some(prev_coins) => match dp[i] {
                        Some(curr_coins) => Some(curr_coins.min(prev_coins + 1)),
                        None => Some(prev_coins + 1),
                    },
                    None => dp[i],
                };
            }
        }
    }

    dp[amount]
}

fn main() 
{
        let coins = vec![1, 2, 5];
         assert_eq!(Some(3), coin_change(&coins, 11));
 
}
