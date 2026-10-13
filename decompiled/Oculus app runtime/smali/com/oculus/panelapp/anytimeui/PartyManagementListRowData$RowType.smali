.class public final enum Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;
.super Ljava/lang/Enum;
.source "PartyManagementListRowData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

.field public static final enum HEADER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

.field public static final enum INVITE_BUTTON_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

.field public static final enum PARTY_MEMBER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    const/4 v1, 0x0

    const-string v2, "HEADER_ROW"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->HEADER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    .line 32
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    const/4 v2, 0x1

    const-string v3, "INVITE_BUTTON_ROW"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->INVITE_BUTTON_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    .line 33
    new-instance v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    const/4 v3, 0x2

    const-string v4, "PARTY_MEMBER_ROW"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->PARTY_MEMBER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->HEADER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->INVITE_BUTTON_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->PARTY_MEMBER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;
    .locals 1

    .line 30
    const-class v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->$VALUES:[Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    return-object v0
.end method
