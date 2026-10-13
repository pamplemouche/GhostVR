.class public interface abstract Lcom/oculus/horizon/spatialai/MapDownloadMethod$Methods;
.super Ljava/lang/Object;
.source "MapDownloadMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spatialai/MapDownloadMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getMapResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/spatialai/MapDownloadResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method
