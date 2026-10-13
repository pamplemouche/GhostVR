.class public interface abstract Lcom/facebook/fbuploader/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;,
        Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;,
        Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;,
        Lcom/facebook/fbuploader/HttpRequestExecutor$Method;
    }
.end annotation


# virtual methods
.method public abstract getDomainName()Ljava/lang/String;
.end method

.method public abstract sendRequest(Lcom/facebook/fbuploader/HttpRequestExecutor$Method;Ljava/util/Map;Ljava/net/URI;Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;)Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;
    .param p4    # Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fbuploader/HttpRequestExecutor$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;",
            "Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;",
            ")",
            "Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;"
        }
    .end annotation
.end method
