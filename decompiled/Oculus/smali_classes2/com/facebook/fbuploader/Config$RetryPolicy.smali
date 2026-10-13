.class public final Lcom/facebook/fbuploader/Config$RetryPolicy;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetryPolicy"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final mMaxBackoffMillis:I

.field public final mMaxRetries:I

.field public final mMinBackoffMillis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0x32

    iput v0, p0, Lcom/facebook/fbuploader/Config$RetryPolicy;->mMaxRetries:I

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/fbuploader/Config$RetryPolicy;->mMinBackoffMillis:I

    .line 119
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/facebook/fbuploader/Config$RetryPolicy;->mMaxBackoffMillis:I

    .line 120
    return-void
.end method
