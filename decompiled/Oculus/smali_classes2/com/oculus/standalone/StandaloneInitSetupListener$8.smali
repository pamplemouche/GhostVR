.class Lcom/oculus/standalone/StandaloneInitSetupListener$8;
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
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

.field final synthetic val$successCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneInitSetupListener;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    iput-object p2, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->val$successCapture:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->maybeFetchHighPriorityAppsWaitTime()Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v1}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$700(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/util/device/DeviceUtils;->supportESig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->val$successCapture:Lbolts/Capture;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 253
    :goto_0
    return-object v6

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string v1, "Failed to fetch the high-pri apps download wait time"

    .line 227
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse;->default_apps_nux_config:Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse$DefaultAppConfig;

    if-eqz v1, :cond_1

    .line 236
    iget-object v0, v0, Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse;->default_apps_nux_config:Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse$DefaultAppConfig;

    iget v0, v0, Lcom/oculus/standalone/net/DefaultApplicationNuxConfigResponse$DefaultAppConfig;->hi_pri_apps_wait_timeout:I

    int-to-long v0, v0

    .line 240
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 242
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successfully fetched high pri apps download wait time. Saving to OVRNuxPrefs now. Value is %d ms"

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 241
    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v2}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$100(Lcom/oculus/standalone/StandaloneInitSetupListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->setHighPriorityAppsDownloadWaitTime(Landroid/content/Context;J)V

    .line 246
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->val$successCapture:Lbolts/Capture;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_1
    const-string v0, "Got unexpected result from high pri download wait time"

    .line 249
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v1}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$500(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    const-string v2, "fetch_high_pri_wait_malformed"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/oculus/standalone/StandaloneInitSetupListener$8;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
