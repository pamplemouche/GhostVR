.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;
.super Ljava/lang/Object;
.source "SocialPartyDialog.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->setPartyInfo(Lcom/oculus/panelapp/anytimeui/AnytimeUIParty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMicState()Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 290
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->HIDDEN:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    return-object v0

    .line 283
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->UNMUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    return-object v0

    .line 285
    :cond_1
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->MUTED:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    return-object v0
.end method

.method public onJoinClick()V
    .locals 0

    return-void
.end method

.method public onMicStateClick(Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;)V
    .locals 6

    .line 254
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$8;->$SwitchMap$com$oculus$panelapp$anytimeui$PartyMemberListRowData$MicState:[I

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;I)V

    .line 264
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After mute state set to UNMUTED, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v4}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;I)V

    .line 258
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After mute state set to MUTED, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v4}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "micState"

    aput-object v5, v3, v4

    .line 274
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "source"

    aput-object p1, v3, v1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$5;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 276
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "party_dialog_update_mic_state"

    .line 271
    invoke-virtual {v0, p1, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
