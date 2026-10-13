.class public Lcom/oculus/horizon/cloudstorage2/ConflictData;
.super Ljava/lang/Object;
.source "ConflictData.java"


# instance fields
.field public final localTimestamp:J

.field public final remoteTimestamp:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/oculus/horizon/cloudstorage2/ConflictData;->localTimestamp:J

    .line 11
    iput-wide p3, p0, Lcom/oculus/horizon/cloudstorage2/ConflictData;->remoteTimestamp:J

    .line 12
    return-void
.end method
