data Invoice = Invoice
    { invoiceNumber :: Int
    , amountDue :: Dollars
    , billableItems :: [String]
    , status :: InvoiceStatus
    , createdAt :: UTCTime
    , dueDate :: Day
    }

type Dollar = Int
data InvoiceStatus
    = Issued
    | Paid
    | Canceled


invoice1 = Invoice
    { invoiceNumber = 1
    , amountDue = 200
    , billableItems = 
        ["Design", "Programming"]
    , status = Issued
    , createdAt = currentTime
    , dueDate =
        fromGeorgian 2022 2 15  
    }    

createNotification :: Invoice -> String
createNotification invoice = 
    case status  invoice of
        Issued ->
            "Invoice #" ++ show (invoiceNumber invoice)
              ++ " due on " ++ shw (dueDate invoice)
        Paid ->
            "Successfully paid invoice #" ++ show (invoiceNumber invoice)

createNotification invoice1 
=> Invoice #1 due on 2022-02-15                  