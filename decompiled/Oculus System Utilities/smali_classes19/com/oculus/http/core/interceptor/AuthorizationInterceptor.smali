.class public abstract Lcom/oculus/http/core/interceptor/AuthorizationInterceptor;
.super Ljava/lang/Object;
.source "AuthorizationInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field static final HTTP_STATUS_UNAUTHORIZED:I = 0x191


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAuthorization()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 32
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {p0}, Lcom/oculus/http/core/interceptor/AuthorizationInterceptor;->getAuthorization()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "authorization":Ljava/lang/String;
    const-string v3, "Authorization"

    invoke-virtual {v1, v3}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Authorization"

    .line 37
    invoke-static {v0}, Lcom/oculus/http/core/common/Authorization;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 41
    :cond_0
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 43
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/oculus/http/core/interceptor/AuthorizationInterceptor;->onUnauthorized()V

    .line 47
    :cond_1
    return-object v2
.end method

.method protected abstract onUnauthorized()V
.end method
