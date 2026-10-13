.class synthetic Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$8;
.super Ljava/lang/Object;
.source "SocialPartyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 254
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->values()[Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$8;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$8;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->MUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$8;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    sget-object v1, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->UNMUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
