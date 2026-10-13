.class Lcom/oculus/horizon/react/OculusReactFragment$1;
.super Ljava/lang/Object;
.source "OculusReactFragment.java"

# interfaces
.implements Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/OculusReactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/OculusReactFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/OculusReactFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oculus/horizon/react/OculusReactFragment$1;->this$0:Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToReactInstance(Lcom/facebook/react/ReactRootView;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment$1;->this$0:Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-static {v0}, Lcom/oculus/horizon/react/OculusReactFragment;->access$000(Lcom/oculus/horizon/react/OculusReactFragment;)Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/oculus/horizon/react/OculusReactFragment$1;->this$0:Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-static {v1}, Lcom/oculus/horizon/react/OculusReactFragment;->access$100(Lcom/oculus/horizon/react/OculusReactFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment$1;->this$0:Lcom/oculus/horizon/react/OculusReactFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/react/OculusReactFragment;->access$102(Lcom/oculus/horizon/react/OculusReactFragment;Z)Z

    .line 83
    :cond_0
    return-void
.end method
