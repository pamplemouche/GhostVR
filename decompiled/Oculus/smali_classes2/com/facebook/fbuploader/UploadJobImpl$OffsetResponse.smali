.class Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;
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
    name = "OffsetResponse"
.end annotation


# instance fields
.field duplicate:Z

.field offset:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;->offset:J

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;->duplicate:Z

    return-void
.end method
