.class public final Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/HttpRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestBody"
.end annotation


# instance fields
.field public final mContent:Lcom/facebook/fbuploader/Content;

.field public final mOffset:J


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/Content;J)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;->mContent:Lcom/facebook/fbuploader/Content;

    .line 29
    iput-wide p2, p0, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;->mOffset:J

    .line 30
    return-void
.end method
