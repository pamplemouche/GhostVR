.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;
.super Ljava/lang/Object;
.source "Nux360FBLoginIntroFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->createOnSDKConnectClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->showLoading()V

    .line 282
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1100(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->doFBAuth(Landroidx/fragment/app/Fragment;)V

    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/network/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_description:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 287
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    .line 288
    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$5;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    const-string v1, "auth_attempt"

    invoke-static {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1200(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;Ljava/lang/String;)V

    .line 291
    return-void
.end method
