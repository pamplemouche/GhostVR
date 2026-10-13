.class public Lcom/facebook/analytics2/logger/UploadSchedulerParams;
.super Ljava/lang/Object;
.source "UploadSchedulerParams.java"


# instance fields
.field public final maxDelayMsForBatch:J

.field public final maxDelayMsForSingleEvent:J

.field public final minDelayMsForBatch:J

.field public final minDelayMsForSingleEvent:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForSingleEvent:J

    .line 17
    iput-wide p3, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForSingleEvent:J

    .line 18
    iput-wide p5, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForBatch:J

    .line 19
    iput-wide p7, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForBatch:J

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{single=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForSingleEvent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForSingleEvent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", batch=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->minDelayMsForBatch:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/UploadSchedulerParams;->maxDelayMsForBatch:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
