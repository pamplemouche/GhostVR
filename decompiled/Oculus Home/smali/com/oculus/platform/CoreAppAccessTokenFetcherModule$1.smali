.class Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;
.super Ljava/lang/Object;
.source "CoreAppAccessTokenFetcherModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->getToken(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

.field final synthetic val$rejectID:I

.field final synthetic val$resolveID:I


# direct methods
.method constructor <init>(Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->this$0:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    iput p2, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->val$rejectID:I

    iput p3, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->val$resolveID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 85
    new-instance v0, Lcom/oculus/platform/OVRServiceSynchronous;

    iget-object v1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->this$0:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    .line 86
    invoke-static {v1}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->access$000(Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service.OVRService"

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1$1;

    invoke-direct {v5, p0}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1$1;-><init>(Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/oculus/platform/OVRServiceSynchronous;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/oculus/platform/OVRServiceSynchronous$AidlService;)V

    .line 97
    .local v0, "mOVRServiceSync":Lcom/oculus/platform/OVRServiceSynchronous;, "Lcom/oculus/platform/OVRServiceSynchronous<Lcom/oculus/platform/aidl/OVRServiceInterface;>;"
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v10

    .line 98
    .local v10, "result":Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;, "Lcom/oculus/platform/OVRServiceSynchronous<Lcom/oculus/platform/aidl/OVRServiceInterface;>.ServiceBindResult;"
    iget-boolean v1, v10, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to OVRService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v10, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->this$0:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    iget-wide v2, v1, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->RVRCtxTag:J

    iget v1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->val$rejectID:I

    const-string v4, "[]"

    invoke-static {v2, v3, v1, v4}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->access$200()Landroid/os/Bundle;

    move-result-object v7

    .line 106
    .local v7, "argsBundle":Landroid/os/Bundle;
    iget-object v1, v10, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v1, Lcom/oculus/platform/aidl/OVRServiceInterface;

    invoke-interface {v1, v7}, Lcom/oculus/platform/aidl/OVRServiceInterface;->getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 107
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v6, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v6, "accessToken":Ljava/lang/String;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "accessToken"

    const-string v3, "access_token"

    .line 110
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 115
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->this$0:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    iget-wide v2, v1, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->RVRCtxTag:J

    iget v1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->val$resolveID:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->nativeInvokeCallback(JILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 116
    .end local v6    # "accessToken":Ljava/lang/String;
    .end local v7    # "argsBundle":Landroid/os/Bundle;
    .end local v8    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 117
    .local v9, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting AccessToken from OVRService"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    iget-object v1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->this$0:Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    iget-wide v2, v1, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->RVRCtxTag:J

    iget v1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;->val$rejectID:I

    const-string v4, "[]"

    invoke-static {v2, v3, v1, v4}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->nativeInvokeCallback(JILjava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v6    # "accessToken":Ljava/lang/String;
    .restart local v7    # "argsBundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v9

    .line 113
    .local v9, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-static {}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to populate accessToken for callback."

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
