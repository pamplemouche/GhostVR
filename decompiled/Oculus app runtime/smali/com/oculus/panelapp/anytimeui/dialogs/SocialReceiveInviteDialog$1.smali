.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;
.source "SocialReceiveInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->configureBasedOnFBUpsellStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

.field final synthetic val$requestUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->val$requestUri:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchLinkedAccountsInfoForViewerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 91
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching viewer\'s linked accounts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V

    return-void
.end method

.method public onSuccess(Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iget-boolean p1, p1, Lcom/oculus/panelapp/anytimeui/LinkedAccountsInfo;->isFacebookLinked:Z

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$002(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Z)Z

    .line 82
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->val$requestUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/SocialReceiveInviteDialog;)V

    :goto_0
    return-void
.end method
