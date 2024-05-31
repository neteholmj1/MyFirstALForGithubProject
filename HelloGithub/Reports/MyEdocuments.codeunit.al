/* codeunit 50004 "MyEdocuments" implements "E-Docuemnt"
{
    procedure Check()//(Var SourceDocumentHeader: RecordRef; EDocumentService: Record "E-Docuemnt service"; EDocumentProcessingPhans: )
    var
        SalesHeader: Record "Sales Header";
        EDocPEPPOLBIS30: Codeunit "EDoc PEPPOL BIS 3.0";
    begin
        case SourceDocumentHeader.Number of
            Database::"Sales Header":
                begin
                    case EDocumentProcessingPhase of
                        EDocumentProcessingPhase::Release:
                            begin
                                SourceDocumentHeader.SetTable(SalesHeader);
                                SalesHeader.TestField("Your Reference"");
                            end;

                    end;
                end;

        end;
        EDocPEPPOLBIS30.Check(SourceDocuemntHeader, EDocumnts)
    end;

} */