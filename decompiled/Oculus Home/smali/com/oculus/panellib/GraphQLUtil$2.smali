.class final Lcom/oculus/panellib/GraphQLUtil$2;
.super Ljava/lang/Object;
.source "GraphQLUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panellib/GraphQLUtil;->post(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/panellib/GraphQLUtil$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/oculus/panellib/GraphQLUtil$Result;


# direct methods
.method constructor <init>(Lcom/oculus/panellib/GraphQLUtil$Result;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oculus/panellib/GraphQLUtil$2;->val$result:Lcom/oculus/panellib/GraphQLUtil$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/panellib/GraphQLUtil$2;->val$result:Lcom/oculus/panellib/GraphQLUtil$Result;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/panellib/GraphQLUtil$Result;->onFailure(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/oculus/panellib/GraphQLUtil$2;->val$result:Lcom/oculus/panellib/GraphQLUtil$Result;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-interface {v3, v4}, Lcom/oculus/panellib/GraphQLUtil$Result;->onFailure(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "responseString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "responseObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/oculus/panellib/GraphQLUtil$2;->val$result:Lcom/oculus/panellib/GraphQLUtil$Result;

    invoke-interface {v3, v1}, Lcom/oculus/panellib/GraphQLUtil$Result;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v1    # "responseObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/oculus/panellib/GraphQLUtil$2;->val$result:Lcom/oculus/panellib/GraphQLUtil$Result;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Json error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oculus/panellib/GraphQLUtil$Result;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
