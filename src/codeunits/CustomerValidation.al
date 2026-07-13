codeunit 50101 CustomerValidation
{
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeModifyEvent', '', false, false)]
    local procedure CheckCreditLimit(var Rec: Record Customer)
    begin
        if Rec.Balance > Rec."Credit Limit" then
            Error('Customer has exceeded credit limit!');
    end;
}
