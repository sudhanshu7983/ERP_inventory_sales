codeunit 50103 LowStockAlert
{
    procedure CheckLowStock(ItemNo: Code[20])
    var
        ItemRec: Record Item;
    begin
        if ItemRec.Get(ItemNo) then begin
            if ItemRec.Inventory < ItemRec."Low Stock Threshold" then
                Message('Low stock alert for item: %1', ItemRec."No.");
        end;
    end;
}
