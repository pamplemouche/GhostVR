.class final Lcom/oculus/vrshell/home/module/GateKeepers$1;
.super Ljava/lang/Object;
.source "GateKeepers.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/GateKeepers;->initialFetchAsync(Landroid/content/Context;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/GateKeepers$1;->val$context:Landroid/content/Context;

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
    .line 208
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/GateKeepers$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 17

    .prologue
    .line 211
    const-string v8, "null"

    .line 212
    .local v8, "cache":Ljava/lang/String;
    const-string v12, "null"

    .line 213
    .local v12, "overrides":Ljava/lang/String;
    const-string v11, "{\"timestamp\":0,\"id\":null}"

    .line 216
    .local v11, "extra":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/vrshell/home/module/GateKeepers$1;->val$context:Landroid/content/Context;

    const-string v2, "VrShellHomeGKCacheFile"

    invoke-static {v1, v2}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 217
    .local v13, "tempCache":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    move-object v8, v13

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/vrshell/home/module/GateKeepers$1;->val$context:Landroid/content/Context;

    const-string v2, "VrShellHomeGKOverridesFile"

    invoke-static {v1, v2}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 221
    .local v15, "tempOverrides":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    move-object v12, v15

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/vrshell/home/module/GateKeepers$1;->val$context:Landroid/content/Context;

    const-string v2, "VrShellHomeGKExtraFile"

    invoke-static {v1, v2}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 225
    .local v14, "tempExtra":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 226
    move-object v11, v14

    .line 238
    .end local v13    # "tempCache":Ljava/lang/String;
    .end local v14    # "tempExtra":Ljava/lang/String;
    .end local v15    # "tempOverrides":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, "{\"cache\":%s,\"overrides\":%s,\"extra\":%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v11, v2, v3

    .line 239
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, "value":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$200()Lcom/oculus/vrshell/home/module/GateKeepers;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 245
    invoke-static {}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 246
    .local v9, "callbackID":Ljava/lang/Integer;
    invoke-static {}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$200()Lcom/oculus/vrshell/home/module/GateKeepers;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$400(Lcom/oculus/vrshell/home/module/GateKeepers;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 250
    .end local v9    # "callbackID":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 228
    .end local v16    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 229
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "oculus_config"

    const-string v2, "status"

    const-string v3, "gk_local_read_failed"

    const-string v4, "error"

    const-string v5, "exception"

    const-string v6, "error_details"

    .line 236
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 229
    invoke-static/range {v1 .. v7}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v16    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/oculus/vrshell/home/module/GateKeepers;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    const/4 v1, 0x0

    return-object v1
.end method
