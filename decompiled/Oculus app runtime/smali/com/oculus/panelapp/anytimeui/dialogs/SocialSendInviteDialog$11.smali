.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;
.source "SocialSendInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->createPartyAndSendRemainingInvites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 5

    .line 566
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$2002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Z)Z

    .line 568
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 570
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "source"

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 571
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "invite_dialog_invite_party_create_fail"

    .line 570
    invoke-virtual {v0, v1, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 573
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 574
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->social_invite_dialog_party_creation_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIWarningToastUtil;->showWarningToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to create a party."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    .line 536
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Null partyID in createParty.onSuccess.  This shouldn\'t happen"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->setPartyID(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "partyID"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "source"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 545
    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v2, v7

    const-string v6, "invite_dialog_invite_party_create_success"

    .line 540
    invoke-virtual {v0, v6, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$2002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Z)Z

    .line 550
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 552
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "totalInvites"

    aput-object v6, v1, v3

    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    aput-object p1, v1, v5

    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 557
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v7

    const-string p1, "invite_dialog_queued_invites_on_create"

    .line 552
    invoke-virtual {v2, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 561
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$11;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$2100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    return-void
.end method
