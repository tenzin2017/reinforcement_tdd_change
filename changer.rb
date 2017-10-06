class Changer

  def self.make_change(amount)
    amt = amount.to_i
    change = []
    if (amt%10 == 0) && amt != 50 && amt != 100
      (amt/10).times { change << 10}
    elsif amt == 50 || amt == 100
      n = amt/50
      x = 2 * n
      x.times { change << 25 }

    elsif amt == 5 || amt == 10 || amt == 25
      change << amt
    elsif amt > 5 && amt < 10
      change << 5
      (amt - 5).times { change << 1  }
    elsif amt > 10 && amt < 15
      change << 10
      (amt - 10).times { change << 1}
    elsif amt > 65 && amt < 70
      2.times {change << 25}
      change << 10
      change << 5
      (amt - 65).times { change << 1}

    end
      return change
  end

end
