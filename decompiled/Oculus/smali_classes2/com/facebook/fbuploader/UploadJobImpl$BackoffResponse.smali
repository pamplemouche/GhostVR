.class Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;
.super Ljava/lang/Object;
.source "UploadJobImpl.java"


# annotations
.annotation build Lcom/instagram/common/json/annotation/JsonType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/UploadJobImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackoffResponse"
.end annotation


# instance fields
.field backoff:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;->backoff:J

    return-void
.end method
