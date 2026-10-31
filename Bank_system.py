class InsufficentBalanceError(Exception):
    pass

class Bank:
    bank_name ="SBI"
    def __init__(self, Name :str , Balance: float= 0.0):
        self.Balance = Balance
        self.Name = Name

    def withdraw(self, amount: float):
        try:
            if amount < 0:
                raise ValueError
            if (self.Balance >= amount) :
                self.Balance -= amount
                print(f"Withdraw amount {amount }. And reaming Balance is {self.Balance}")
            else:
                raise InsufficentBalanceError("Insufficent  Balance")
        except InsufficentBalanceError as e:
            print(f"{e}")
        except ValueError :
            print(f"Balance should be positive. Try again ! ")


    def deposit(self, amount: float):
        if amount > 0:
            self.Balance +=amount
            self.Balance= self.Balance
            print(f"{amount} Deposited Successfully. Balance is {self.Balance}")
        else:
            print(f"Amount should be positive. Try again ! ")

    def check_balance(self):
        print(f"{self.Name} Balance is {self.Balance}")

customer1 = Bank("Mayur",1253.36)
customer2 = Bank("Gayu",5000)
customer1.withdraw(-10)

