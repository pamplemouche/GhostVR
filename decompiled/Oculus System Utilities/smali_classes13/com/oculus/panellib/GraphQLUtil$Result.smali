.class public interface abstract Lcom/oculus/panellib/GraphQLUtil$Result;
.super Ljava/lang/Object;
.source "GraphQLUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panellib/GraphQLUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Result"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
.end method
