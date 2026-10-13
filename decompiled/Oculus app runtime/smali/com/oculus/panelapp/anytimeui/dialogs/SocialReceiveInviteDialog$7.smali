.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;
.source "SocialReceiveInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->joinParty(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field final synthetic val$shouldLaunchAppOnSuccess:Z


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Z)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iput-boolean p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->val$shouldLaunchAppOnSuccess:Z

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9

    .line 392
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "party_id"

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 395
    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "source"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 397
    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const-string v6, "join_dialog_join_success"

    .line 392
    invoke-virtual {p1, v6, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 398
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "join"

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 399
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->val$shouldLaunchAppOnSuccess:Z

    if-eqz p1, :cond_0

    .line 402
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try to launch party activity: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 404
    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; Deeplink Options: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 406
    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 408
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v6}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v8}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v8

    .line 407
    invoke-virtual {p1, v1, v6, v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionStoreAppLaunch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "launched_app_id"

    aput-object v6, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 412
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1300(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "launched_app_package_name"

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 414
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v3, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    .line 416
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$700(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "join_dialog_app_launch"

    .line 409
    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
