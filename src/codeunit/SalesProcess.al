codeunit 50102 SalesProcess
{
    procedure ProcessSale(ItemNo: Code[20]; Quantity: Integer)
    var
        ItemRec: Record Item;
    begin
        if ItemRec.Get(ItemNo) then begin
            if ItemRec.Inventory < Quantity then
                Error('Not enough stock');

            ItemRec.Inventory := ItemRec.Inventory - Quantity;
            ItemRec.Modify();
        end;
    end;
}
