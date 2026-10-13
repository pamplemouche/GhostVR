.class Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$3;
.super Ljava/lang/Object;
.source "Nux360FBLoginIntroFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 176
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$600(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "showing_legacy_create_account"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$900(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;->access$1000(Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginIntroFragment$FBLoginIntroFragmentHost;->introCreateAccountNext()V

    .line 184
    :cond_0
    return-void
.end method
