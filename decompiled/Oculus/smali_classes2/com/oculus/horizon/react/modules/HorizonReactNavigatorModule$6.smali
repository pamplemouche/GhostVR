.class Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$6;
.super Ljava/lang/Object;
.source "HorizonReactNavigatorModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->setBarPrimaryAction(DLcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

.field final synthetic val$action:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$rootTag:D


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$6;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    iput-wide p2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$6;->val$rootTag:D

    iput-object p4, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$6;->val$action:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$6;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$800(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Landroid/app/Activity;

    move-result-object v0

    .line 176
    iget-wide v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$6;->val$rootTag:D

    double-to-int v1, v2

    invoke-static {v1, v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->isCurrentReactTag(ILandroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->getCurrentReactFragment(Landroid/app/Activity;)Lcom/oculus/horizon/react/OculusReactFragment;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$6;->val$action:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/react/OculusReactFragment;->setPrimaryButtonTitle(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 182
    :cond_0
    return-void
.end method
