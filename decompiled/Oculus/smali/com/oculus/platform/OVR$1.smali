.class Lcom/oculus/platform/OVR$1;
.super Ljava/lang/Object;
.source "OVR.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVR;->registerLifeCycleCallback(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVR;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVR;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/oculus/platform/OVR$1;->this$0:Lcom/oculus/platform/OVR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oculus/platform/OVR$1;->this$0:Lcom/oculus/platform/OVR;

    invoke-static {v0}, Lcom/oculus/platform/OVR;->access$100(Lcom/oculus/platform/OVR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/platform/OVR$1;->this$0:Lcom/oculus/platform/OVR;

    invoke-static {v1}, Lcom/oculus/platform/OVR;->access$200(Lcom/oculus/platform/OVR;)Lcom/oculus/platform/receiver/OVRPlatformBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    iget-object v0, p0, Lcom/oculus/platform/OVR$1;->this$0:Lcom/oculus/platform/OVR;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/platform/OVR;->access$102(Lcom/oculus/platform/OVR;Z)Z

    .line 265
    invoke-static {}, Lcom/oculus/platform/OVR;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unregistered OVRPlatformBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oculus/platform/OVR$1;->this$0:Lcom/oculus/platform/OVR;

    invoke-static {v0, p1}, Lcom/oculus/platform/OVR;->access$000(Lcom/oculus/platform/OVR;Landroid/app/Activity;)V

    .line 255
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method
