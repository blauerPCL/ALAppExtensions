namespace Microsoft.DataMigration.SL.HistoricalData;

query 42806 "SL Hist. POReceiptDocuments"
{
    QueryType = Normal;
    OrderBy = ascending(BatNbr);
    QueryCategory = 'Vendor List', 'Purchase Order List';
    Caption = 'Dynamics SL Purchase Order Receipt Documents';
    elements
    {
        dataitem(SL_POReceiptHist; "SL Hist. POReceipt")
        {
            column(CpnyID; CpnyID)
            {
                Caption = 'Company ID';
            }
            column(BatNbr; BatNbr)
            {
                Caption = 'Batch Number';
            }
            column(PONbr; PONbr)
            {
                Caption = 'PO Number';
            }
            column(RcptType; RcptType)
            {
                Caption = 'Receipt/Return';
            }
            column(RcptNbr; RcptNbr)
            {
                Caption = 'Receipt Number';
            }
            column(RcptDate; RcptDate)
            {
                Caption = 'Receipt Date';
            }
            column(Status; Status)
            {
                Caption = 'Receipt Status';
            }
            column(VendID; VendID)
            {
                Caption = 'Vendor ID';
            }
            column(VouchStage; VouchStage)
            {
                Caption = 'Vouchered Stage';
            }
            column(APRefno; APRefno)
            {
                Caption = 'AP Reference Number';
            }
            column(RcptQty; RcptQty)
            {
                Caption = 'Receipt Quantity';
            }
            column(RcptQtyTot; RcptQtyTot)
            {
                Caption = 'Quantity Total';
            }
            column(RcptAmt; RcptAmt)
            {
                Caption = 'Receipt Amount';
            }
            column(RcptAmtTot; RcptAmtTot)
            {
                Caption = 'Amount Total';
            }
        }
    }

    trigger OnBeforeOpen()
    begin
        CpnyName := CompanyName();
        SetFilter(CpnyID, CpnyName);
    end;

    var
        CpnyName: Text[10];
}