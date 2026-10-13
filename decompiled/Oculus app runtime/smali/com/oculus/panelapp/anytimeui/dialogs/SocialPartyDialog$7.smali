.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;
.source "SocialPartyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->leaveParty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$SingleIDCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "partyID"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 413
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "source"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "party_dialog_leave_fail"

    .line 412
    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to leave party: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 417
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 418
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$string;->social_party_dialog_party_leave_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIWarningToastUtil;->showWarningToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "partyID"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "source"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 405
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "party_dialog_leave_success"

    .line 400
    invoke-virtual {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left party: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$7;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
