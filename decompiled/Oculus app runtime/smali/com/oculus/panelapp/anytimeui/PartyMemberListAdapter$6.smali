.class synthetic Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;
.super Ljava/lang/Object;
.source "PartyMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$anytimeui$PartyManagementListRowData$RowType:[I

.field static final synthetic $SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 167
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->values()[Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    sget-object v2, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->MUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    sget-object v3, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->UNMUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    sget-object v4, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->HIDDEN:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-virtual {v4}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 48
    :catch_2
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->values()[Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyManagementListRowData$RowType:[I

    :try_start_3
    sget-object v3, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyManagementListRowData$RowType:[I

    sget-object v4, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->INVITE_BUTTON_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    invoke-virtual {v4}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyManagementListRowData$RowType:[I

    sget-object v3, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->HEADER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListAdapter$6;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyManagementListRowData$RowType:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->PARTY_MEMBER_ROW:Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/PartyManagementListRowData$RowType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
