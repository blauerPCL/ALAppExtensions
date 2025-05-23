// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.HumanResources;

using Microsoft.DemoTool.Helpers;
using Microsoft.HumanResources.Employee;

codeunit 5167 "Create Employee Template"
{
    trigger OnRun()
    var
        HumanResourcesModuleSetup: Record "Human Resources Module Setup";
        ContosoHumanResource: Codeunit "Contoso Human Resources";
    begin
        HumanResourcesModuleSetup.Get();

        ContosoHumanResource.InsertEmployeeTemplate(AdminCode(), AdministrationStaffLbl, Enum::"Employee Gender"::Male, HumanResourcesModuleSetup."Employee Posting Group");
        ContosoHumanResource.InsertEmployeeTemplate(ITCode(), ITStaffLbl, Enum::"Employee Gender"::Female, HumanResourcesModuleSetup."Employee Posting Group");
    end;

    var
        AdministrationTok: Label 'ADMINISTRATION', MaxLength = 20;
        AdministrationStaffLbl: Label 'Administration staff', MaxLength = 100;
        ITTok: Label 'IT', MaxLength = 20;
        ITStaffLbl: Label 'IT staff', MaxLength = 100;

    procedure AdminCode(): Text[20]
    begin
        exit(AdministrationTok);
    end;

    procedure ITCode(): Text[20]
    begin
        exit(ITTok);
    end;
}
