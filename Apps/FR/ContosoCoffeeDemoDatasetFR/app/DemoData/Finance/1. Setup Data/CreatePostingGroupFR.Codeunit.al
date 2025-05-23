// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.Finance;

using Microsoft.DemoTool.Helpers;

codeunit 10868 "Create Posting Group FR"
{
    InherentEntitlements = X;
    InherentPermissions = X;

    trigger OnRun()
    begin
        UpdateGeneralPostingSetup();
    end;

    local procedure UpdateGeneralPostingSetup()
    var
        ContosoPostingGrpFR: Codeunit "Contoso Posting Grp FR";
        CreatePostingGroup: Codeunit "Create Posting Groups";
        CreateGLAccount: Codeunit "Create G/L Account";
    begin
        ContosoPostingGrpFR.validatePostingAccount('', CreatePostingGroup.RetailPostingGroup(), '', '', CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', '', '', '', '', CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), '', '');
        ContosoPostingGrpFR.validatePostingAccount('', CreatePostingGroup.ZeroPostingGroup(), '', '', CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', '', '', '', '', CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), '', '');
        ContosoPostingGrpFR.validatePostingAccount('', CreatePostingGroup.ServicesPostingGroup(), '', '', CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', '', '', '', '', CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), '', '');

        ContosoPostingGrpFR.validatePostingAccount(CreatePostingGroup.DomesticPostingGroup(), CreatePostingGroup.RetailPostingGroup(), CreateGLAccount.SalesRetailDom(), CreateGLAccount.PurchRetailDom(), CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), CreateGLAccount.SalesRetailDom(), CreateGLAccount.PurchRetailDom());
        ContosoPostingGrpFR.validatePostingAccount(CreatePostingGroup.DomesticPostingGroup(), CreatePostingGroup.ServicesPostingGroup(), CreateGLAccount.SalesResourcesDom(), CreateGLAccount.PurchRetailDom(), CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), CreateGLAccount.SalesResourcesDom(), CreateGLAccount.PurchRetailDom());
        ContosoPostingGrpFR.validatePostingAccount(CreatePostingGroup.DomesticPostingGroup(), CreatePostingGroup.ZeroPostingGroup(), CreateGLAccount.SalesRetailDom(), CreateGLAccount.PurchRetailDom(), CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), CreateGLAccount.SalesRetailDom(), CreateGLAccount.PurchRetailDom());
        ContosoPostingGrpFR.validatePostingAccount(CreatePostingGroup.EUPostingGroup(), CreatePostingGroup.RetailPostingGroup(), CreateGLAccount.SalesRetailEu(), CreateGLAccount.PurchRetailEu(), CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), CreateGLAccount.SalesRetailEu(), CreateGLAccount.PurchRetailEu());
        ContosoPostingGrpFR.validatePostingAccount(CreatePostingGroup.ExportPostingGroup(), CreatePostingGroup.RetailPostingGroup(), CreateGLAccount.SalesRetailExport(), CreateGLAccount.PurchRetailExport(), CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), CreateGLAccount.SalesRetailExport(), CreateGLAccount.PurchRetailExport());
        ContosoPostingGrpFR.validatePostingAccount(CreatePostingGroup.ExportPostingGroup(), CreatePostingGroup.ServicesPostingGroup(), CreateGLAccount.SalesResourcesExport(), CreateGLAccount.PurchRetailExport(), CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), CreateGLAccount.SalesResourcesExport(), CreateGLAccount.PurchRetailExport());
        ContosoPostingGrpFR.validatePostingAccount(CreatePostingGroup.ExportPostingGroup(), CreatePostingGroup.ZeroPostingGroup(), CreateGLAccount.SalesRetailExport(), CreateGLAccount.PurchRetailExport(), CreateGLAccount.InventoryAdjmtRetail(), CreateGLAccount.InventoryAdjmtRetail(), '', '', CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscountGranted(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.DiscReceivedRetail(), CreateGLAccount.CostOfRetailSold(), CreateGLAccount.CostOfResaleSoldInterim(), CreateGLAccount.InvAdjmtInterimRetail(), CreateGLAccount.SalesRetailExport(), CreateGLAccount.PurchRetailExport());
    end;
}
