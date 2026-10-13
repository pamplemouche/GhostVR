.class public final Lcom/facebook/fbuploader/UploadJobFactory;
.super Ljava/lang/Object;
.source "UploadJobFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/HttpRequestExecutor;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadJobFactory;->mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;

    .line 15
    return-void
.end method


# virtual methods
.method public createJob(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;)Lcom/facebook/fbuploader/UploadJob;
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p2}, Lcom/facebook/fbuploader/Config;->shouldUseOptimizedUploadJob()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;

    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobFactory;->mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;-><init>(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;Lcom/facebook/fbuploader/HttpRequestExecutor;)V

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/fbuploader/UploadJobImpl;

    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobFactory;->mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/facebook/fbuploader/UploadJobImpl;-><init>(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;Lcom/facebook/fbuploader/HttpRequestExecutor;)V

    goto :goto_0
.end method
