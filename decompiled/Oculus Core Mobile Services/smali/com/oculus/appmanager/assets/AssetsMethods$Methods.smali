.class public interface abstract Lcom/oculus/appmanager/assets/AssetsMethods$Methods;
.super Ljava/lang/Object;
.source "AssetsMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/assets/AssetsMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getAssetListAndBinId(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;
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
