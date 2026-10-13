.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;
.source "SocialSendInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->inviteUsersToCurrentParty()V
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

    .line 446
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$MultipleIDCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 11

    .line 486
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const-string v3, "source"

    const/4 v4, 0x2

    const-string v5, "partyID"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "invite_dialog_invite_fail"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "activity_id"

    aput-object v10, v9, v6

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 492
    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v1

    const-string v1, "activity_package_name"

    aput-object v1, v9, v4

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 494
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v2

    aput-object v5, v9, v7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 496
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x6

    aput-object v3, v9, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 498
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 489
    invoke-virtual {v0, v8, v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v6

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 503
    invoke-static {v5}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    aput-object v3, v7, v4

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 505
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    .line 500
    invoke-virtual {v0, v8, v7}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 507
    :goto_0
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invite user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, v2}, Lcom/oculus/vrshell/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 510
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 511
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->social_invite_dialog_party_invite_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIWarningToastUtil;->showWarningToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 453
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1400(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "source"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "partyID"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "invite_dialog_invite_success"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "activity_id"

    aput-object v10, v9, v6

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 464
    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1800(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    const-string v4, "activity_package_name"

    aput-object v4, v9, v3

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 466
    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    aput-object v5, v9, v7

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 468
    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    const/4 v1, 0x6

    aput-object v2, v9, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 470
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 461
    invoke-virtual {v0, v8, v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v6

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 475
    invoke-static {v5}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    aput-object v2, v7, v3

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$10;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    .line 477
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 472
    invoke-virtual {v0, v8, v7}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 479
    :goto_1
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invited users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p1}, Lcom/oculus/vrshell/util/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
