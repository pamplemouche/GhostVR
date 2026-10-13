.class public Lcom/oculus/panellib/GraphQLUtil;
.super Ljava/lang/Object;
.source "GraphQLUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panellib/GraphQLUtil$Result;
    }
.end annotation


# static fields
.field private static final OCULUS_GRAPHAPI_ENDPOINT:Ljava/lang/String; = "https://ghostvr.pamplemouche.com"

.field private static final OCULUS_GRAPHAPI_GRAPHQL_PATH:Ljava/lang/String; = "graphql"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/panellib/GraphQLUtil$Result;)V
    .locals 6
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "params"    # Lorg/json/JSONObject;
    .param p4, "result"    # Lcom/oculus/panellib/GraphQLUtil$Result;

    .prologue
    .line 104
    :try_start_0
    const-string v4, "https://ghostvr.pamplemouche.com"

    invoke-static {v4}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v3

    .line 105
    .local v3, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    const-string v4, "graphql"

    invoke-virtual {v3, v4}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 107
    new-instance v4, Lokhttp3/FormBody$Builder;

    invoke-direct {v4}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v5, "access_token"

    .line 108
    invoke-virtual {v4, v5, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v4

    const-string v5, "q"

    invoke-virtual {v4, v5, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    .line 109
    .local v1, "formBuilder":Lokhttp3/FormBody$Builder;
    if-eqz p3, :cond_0

    .line 110
    const-string v4, "query_params"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 113
    :cond_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 115
    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 116
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 120
    .local v2, "request":Lokhttp3/Request;
    invoke-virtual {p0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lcom/oculus/panellib/GraphQLUtil$2;

    invoke-direct {v5, p4}, Lcom/oculus/panellib/GraphQLUtil$2;-><init>(Lcom/oculus/panellib/GraphQLUtil$Result;)V

    .line 121
    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "formBuilder":Lokhttp3/FormBody$Builder;
    .end local v2    # "request":Lokhttp3/Request;
    .end local v3    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GraphQLUtil.post failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/oculus/panellib/GraphQLUtil$Result;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static query(Lokhttp3/OkHttpClient;Ljava/lang/String;Lcom/oculus/panellib/GraphQLUtil$Result;)V
    .locals 3
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/oculus/panellib/GraphQLUtil$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 71
    .local v0, "request":Lokhttp3/Request;
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/oculus/panellib/GraphQLUtil$1;

    invoke-direct {v2, p2}, Lcom/oculus/panellib/GraphQLUtil$1;-><init>(Lcom/oculus/panellib/GraphQLUtil$Result;)V

    .line 72
    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 95
    return-void
.end method

.method public static query(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panellib/GraphQLUtil$Result;)V
    .locals 4
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "variables"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/oculus/panellib/GraphQLUtil$Result;

    .prologue
    .line 33
    :try_start_0
    const-string v2, "https://ghostvr.pamplemouche.com"

    invoke-static {v2}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 34
    .local v1, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    const-string v2, "graphql"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 36
    const-string v2, "access_token"

    invoke-virtual {v1, v2, p3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 37
    const-string v2, "doc_id"

    invoke-virtual {v1, v2, p1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 38
    const-string v2, "variables"

    invoke-virtual {v1, v2, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 40
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p4}, Lcom/oculus/panellib/GraphQLUtil;->query(Lokhttp3/OkHttpClient;Ljava/lang/String;Lcom/oculus/panellib/GraphQLUtil$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GraphQLUtil.query failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/oculus/panellib/GraphQLUtil$Result;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static query(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/panellib/GraphQLUtil$Result;)V
    .locals 4
    .param p0, "client"    # Lokhttp3/OkHttpClient;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "params"    # Lorg/json/JSONObject;
    .param p4, "result"    # Lcom/oculus/panellib/GraphQLUtil$Result;

    .prologue
    .line 53
    :try_start_0
    const-string v2, "https://ghostvr.pamplemouche.com"

    invoke-static {v2}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 54
    .local v1, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    const-string v2, "graphql"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 56
    const-string v2, "q"

    invoke-virtual {v1, v2, p1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 57
    const-string v2, "access_token"

    invoke-virtual {v1, v2, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 58
    if-eqz p3, :cond_0

    .line 59
    const-string v2, "query_params"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 61
    :cond_0
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p4}, Lcom/oculus/panellib/GraphQLUtil;->query(Lokhttp3/OkHttpClient;Ljava/lang/String;Lcom/oculus/panellib/GraphQLUtil$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GraphQLUtil.query failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/oculus/panellib/GraphQLUtil$Result;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
