.class Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;
.super Ljava/lang/Object;
.source "Nux360FBLoginExistingAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->access$400(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$FBLoginExistingAccountFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$FBLoginExistingAccountFragmentHost;->introFBLoginCreateNext()V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "showing_create_account"

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;

    .line 76
    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEventWithTrackingView(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 78
    :cond_0
    return-void
.end method
