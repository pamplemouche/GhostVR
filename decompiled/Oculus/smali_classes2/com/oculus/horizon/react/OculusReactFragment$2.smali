.class Lcom/oculus/horizon/react/OculusReactFragment$2;
.super Ljava/lang/Object;
.source "OculusReactFragment.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/OculusReactFragment;->addReactInstanceEventListener()V
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
    .line 125
    iput-object p1, p0, Lcom/oculus/horizon/react/OculusReactFragment$2;->this$0:Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment$2;->this$0:Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-static {v0}, Lcom/oculus/horizon/react/OculusReactFragment;->access$200(Lcom/oculus/horizon/react/OculusReactFragment;)V

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/react/OculusReactFragment$2;->this$0:Lcom/oculus/horizon/react/OculusReactFragment;

    invoke-static {v0}, Lcom/oculus/horizon/react/OculusReactFragment;->access$300(Lcom/oculus/horizon/react/OculusReactFragment;)V

    .line 130
    return-void
.end method
