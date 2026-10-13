.class Lcom/oculus/standalone/StandaloneInitSetupListener$6;
.super Ljava/lang/Object;
.source "StandaloneInitSetupListener.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneInitSetupListener;->fetchAndSetNuxHighPriDownloadWaitTime()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

.field final synthetic val$successCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneInitSetupListener;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$6;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    iput-object p2, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$6;->val$successCapture:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/oculus/standalone/StandaloneInitSetupListener$6;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$6;->val$successCapture:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$6;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$100(Lcom/oculus/standalone/StandaloneInitSetupListener;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;->FAILED:Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;

    invoke-static {v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->setHighPriorityAppsDownloadStatus(Landroid/content/Context;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$Status;)V

    .line 263
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$6;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/standalone/StandalonePrefs;->setHighPriAppsSetupComplete(Z)V

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed to fetch high pri app wait time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
