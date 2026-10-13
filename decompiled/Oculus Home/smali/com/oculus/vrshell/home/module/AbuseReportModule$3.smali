.class Lcom/oculus/vrshell/home/module/AbuseReportModule$3;
.super Landroid/content/BroadcastReceiver;
.source "AbuseReportModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AbuseReportModule;->getAbuseReportVideo(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

.field final synthetic val$rejectID:I

.field final synthetic val$resolveID:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AbuseReportModule;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AbuseReportModule;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iput p2, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->val$resolveID:I

    iput p3, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->val$rejectID:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 280
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "URI"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "uriString":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "URI=\'%s\'"

    invoke-static {v7, v8, v6}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    if-nez v6, :cond_0

    .line 283
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "null uriString"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v6    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "exception":Ljava/lang/Exception;
    invoke-static {}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getAbuseReportVideo failed"

    invoke-static {v7, v1, v8}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 300
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 302
    .local v3, "promiseObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "message"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 305
    .local v2, "promiseArgs":Lorg/json/JSONArray;
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 306
    iget-object v7, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iget-wide v8, v7, Lcom/oculus/vrshell/home/module/AbuseReportModule;->RVRCtxTag:J

    iget v7, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->val$rejectID:I

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v7, v10}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 308
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v3    # "promiseObject":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 286
    .end local v2    # "promiseArgs":Lorg/json/JSONArray;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "uriString":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 287
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 288
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "null URI, uriString="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 290
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "scheme":Ljava/lang/String;
    const-string v7, "content"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 292
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "expecting content URI, got %s uri: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 295
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 296
    .restart local v2    # "promiseArgs":Lorg/json/JSONArray;
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 297
    iget-object v7, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->this$0:Lcom/oculus/vrshell/home/module/AbuseReportModule;

    iget-wide v8, v7, Lcom/oculus/vrshell/home/module/AbuseReportModule;->RVRCtxTag:J

    iget v7, p0, Lcom/oculus/vrshell/home/module/AbuseReportModule$3;->val$resolveID:I

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v7, v10}, Lcom/oculus/vrshell/home/module/AbuseReportModule;->nativeInvokeCallback(JILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 303
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "promiseArgs":Lorg/json/JSONArray;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "uriString":Ljava/lang/String;
    .restart local v1    # "exception":Ljava/lang/Exception;
    .restart local v3    # "promiseObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    goto :goto_0
.end method
