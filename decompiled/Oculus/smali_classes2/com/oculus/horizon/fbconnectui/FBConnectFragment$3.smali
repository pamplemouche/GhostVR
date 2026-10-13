.class Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;
.super Ljava/lang/Object;
.source "FBConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->createOnSDKConnectClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    const-string v1, "sdk_connect_attempt"

    invoke-static {v0, v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$400(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$800(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 368
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$300(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->isFacebookLinked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$300(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    .line 372
    invoke-static {v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$300(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->getCurrentFBAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;->AUTO_FRIEND:Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;

    .line 371
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->registerFBConnectAccount(Lcom/facebook/AccessToken;Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$300(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->doFBAuth(Landroidx/fragment/app/Fragment;)V

    .line 375
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/network/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_description:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 378
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 379
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    .line 380
    invoke-virtual {v1}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    goto :goto_0
.end method
