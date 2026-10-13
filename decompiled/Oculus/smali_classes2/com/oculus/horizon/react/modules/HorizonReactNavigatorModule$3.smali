.class Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$3;
.super Ljava/lang/Object;
.source "HorizonReactNavigatorModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->pop(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

.field final synthetic val$rootTag:D


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;D)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$3;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    iput-wide p2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$3;->val$rootTag:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$3;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$500(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Landroid/app/Activity;

    move-result-object v0

    .line 128
    iget-wide v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$3;->val$rootTag:D

    double-to-int v1, v2

    invoke-static {v1, v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->isCurrentReactTag(ILandroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Lcom/oculus/horizon/react/OculusReactDelegateProvider;

    .line 130
    invoke-interface {v0}, Lcom/oculus/horizon/react/OculusReactDelegateProvider;->getReactDelegate()Lcom/oculus/horizon/react/OculusReactDelegate;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/oculus/horizon/react/OculusReactDelegate;->getBackButtonHandler()Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;->invokeDefaultOnBackPressed()V

    .line 134
    :cond_0
    return-void
.end method
