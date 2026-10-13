.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;
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

.field final synthetic val$member:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->val$member:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMicState()Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;
    .locals 1

    .line 335
    sget-object v0, Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;->HIDDEN:Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;

    return-object v0
.end method

.method public onJoinClick()V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->val$member:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->val$member:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->val$member:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    iget-object v3, v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceDeeplinkMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionStoreAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 323
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "launched_app_id"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->val$member:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "launched_app_package_name"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->val$member:Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;

    iget-object v2, v2, Lcom/oculus/panelapp/anytimeui/AnytimeUIParty$Member;->presenceAppPackageName:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "source"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 330
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "party_dialog_join_button_app_launch"

    .line 323
    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onMicStateClick(Lcom/oculus/panelapp/anytimeui/PartyMemberListRowData$MicState;)V
    .locals 0

    return-void
.end method
