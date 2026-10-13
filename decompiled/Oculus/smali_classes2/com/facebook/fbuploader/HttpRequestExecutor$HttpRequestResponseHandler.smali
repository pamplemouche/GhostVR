.class public abstract Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/HttpRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HttpRequestResponseHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCompletion(Ljava/lang/String;)V
.end method

.method public abstract onFailure(Ljava/lang/Exception;Z)V
.end method

.method public onProgress(I)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
