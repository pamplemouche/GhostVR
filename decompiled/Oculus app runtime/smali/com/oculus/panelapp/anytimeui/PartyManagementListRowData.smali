.class public Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;
.super Ljava/lang/Object;
.source "PartyManagementListRowData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;
    }
.end annotation


# instance fields
.field private final mData:Ljava/lang/Object;

.field private final mType:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->mType:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->mData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->mType:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    .line 11
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getRowType()Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData;->mType:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    return-object v0
.end method
