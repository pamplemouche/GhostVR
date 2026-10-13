.class Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;
.super Ljava/lang/Object;
.source "Nux360FBLoginCreateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$FBLoginCreateFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$FBLoginCreateFragmentHost;->introFBLoginConnectNext()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "showing_connect_account"

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;

    .line 93
    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEventWithTrackingView(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 94
    return-void
.end method
