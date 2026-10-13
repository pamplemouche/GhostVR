.class Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;
.super Ljava/lang/Object;
.source "HorizonReactNavigatorModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->navigate(DLjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

.field final synthetic val$paramsBundle:Landroid/os/Bundle;

.field final synthetic val$rootTag:D

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;Landroid/os/Bundle;Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    iput-object p2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->val$paramsBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->val$target:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->val$rootTag:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    const-string v0, "$$OCHorizonNavigation$$_isModal"

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->val$paramsBundle:Landroid/os/Bundle;

    const-string v1, "$$OCHorizonNavigation$$_isModal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    new-instance v1, Lcom/oculus/horizon/react/ReactScreenDescription;

    iget-object v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->val$target:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->val$paramsBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/react/ReactScreenDescription;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$100(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Lcom/oculus/horizon/react/OculusReactNativeLauncher;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v2}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$000(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/react/OculusReactNativeLauncher;->launchReactActivity(Lcom/oculus/horizon/react/ReactScreenDescription;Landroid/content/Context;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v0}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$200(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->this$0:Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;

    invoke-static {v2}, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;->access$100(Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule;)Lcom/oculus/horizon/react/OculusReactNativeLauncher;

    move-result-object v2

    iget-wide v4, p0, Lcom/oculus/horizon/react/modules/HorizonReactNavigatorModule$1;->val$rootTag:D

    double-to-int v3, v4

    invoke-virtual {v2, v0, v1, v3}, Lcom/oculus/horizon/react/OculusReactNativeLauncher;->launchReactFragment(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/react/ReactScreenDescription;I)V

    goto :goto_0
.end method
