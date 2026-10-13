.class Lcom/oculus/modules/JSBundleModuleImpl$3;
.super Ljava/lang/Object;
.source "JSBundleModuleImpl.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/JSBundleModuleImpl;->getOverrideBundle()Lbolts/Continuation;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Lcom/oculus/vrshell/home/JSBundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/JSBundleModuleImpl;


# direct methods
.method constructor <init>(Lcom/oculus/modules/JSBundleModuleImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/JSBundleModuleImpl;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oculus/modules/JSBundleModuleImpl$3;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/vrshell/home/JSBundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 157
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "bundleConfigurationJson":Lorg/json/JSONObject;
    const-string v5, "bundle_configuration"

    .line 159
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "bundleConfigurationString":Ljava/lang/String;
    iget-object v5, p0, Lcom/oculus/modules/JSBundleModuleImpl$3;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-static {v5}, Lcom/oculus/modules/JSBundleModuleImpl;->access$200(Lcom/oculus/modules/JSBundleModuleImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/oculus/vrshell/home/AppVersion;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "appVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/oculus/modules/JSBundleModuleImpl$3;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-virtual {v5, v0, v3}, Lcom/oculus/modules/JSBundleModuleImpl;->nativeGetOverrideBundle(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/home/JSBundle;

    move-result-object v1

    .line 162
    .local v1, "bundle":Lcom/oculus/vrshell/home/JSBundle;
    if-nez v1, :cond_0

    .line 163
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No override bundle available"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v5, "oculus_js_bundle"

    const-string v6, "status"

    const-string v7, "js_bundle_no_override_available"

    invoke-static {v5, v6, v7}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    return-object v5

    .line 169
    :cond_0
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Got override bundle from C++: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 170
    invoke-virtual {v1}, Lcom/oculus/vrshell/home/JSBundle;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 169
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v5, "oculus_js_bundle"

    const-string v6, "status"

    const-string v7, "js_bundle_override_determined"

    invoke-static {v5, v6, v7}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v1    # "bundle":Lcom/oculus/vrshell/home/JSBundle;
    .end local v2    # "bundleConfigurationJson":Lorg/json/JSONObject;
    .end local v3    # "bundleConfigurationString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 178
    .local v4, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error while getting override bundle: %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    throw v4
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/oculus/modules/JSBundleModuleImpl$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
