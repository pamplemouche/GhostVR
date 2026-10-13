.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$4;
.super Ljava/lang/Object;
.source "Nux360FBLoginIntroFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 198
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 201
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_not_you:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->fbconnect_not_you_message:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 204
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    .line 206
    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$4;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$600(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "showing_not_you"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 209
    return-void
.end method
