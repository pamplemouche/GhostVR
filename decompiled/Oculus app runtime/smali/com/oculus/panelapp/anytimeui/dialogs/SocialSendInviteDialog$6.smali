.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;
.source "SocialSendInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->initializeBasedOnFBLinkedStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 251
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching viewer\'s linked accounts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    return-void
.end method

.method public onSuccess(Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    iget-boolean p1, p1, Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;->isFacebookLinked:Z

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;Z)Z

    .line 242
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog$6;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;->access$1200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialSendInviteDialog;)V

    :goto_0
    return-void
.end method
