.class final Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;
.super Ljava/lang/Object;
.source "NuxPreferencesModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->internalFetchPreferences(Lcom/google/common/util/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "preferences":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;
    const-wide/16 v2, 0x0

    .line 154
    .local v2, "sleepTime":J
    :goto_0
    sget-object v4, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 155
    invoke-virtual {v4}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 154
    invoke-static {v4}, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences;->getClientPreferenceData(Landroid/content/Context;)Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;

    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$600(Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    move-object v0, v1

    .line 169
    .local v0, "finalPreferences":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;
    sget-object v4, Lcom/oculus/vrshell/home/HomeApplication;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2$1;

    invoke-direct {v5, p0, v0}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2$1;-><init>(Lcom/oculus/vrshell/home/module/NuxPreferencesModule$2;Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    const-string v4, "rollout_token"

    iget-object v5, v1, Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;->rolloutToken:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/oculus/vrshell/home/module/NuxPreferencesModule;->access$700()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 160
    .end local v0    # "finalPreferences":Lcom/oculus/nuxpreferencesapi/OVRNuxPreferences$ClientPreferenceData;
    :cond_0
    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    .line 162
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v4

    goto :goto_0
.end method
