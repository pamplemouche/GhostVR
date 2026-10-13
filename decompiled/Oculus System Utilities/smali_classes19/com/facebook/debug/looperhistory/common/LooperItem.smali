.class Lcom/facebook/debug/looperhistory/common/LooperItem;
.super Ljava/lang/Object;
.source "LooperItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LooperHistory"


# instance fields
.field private mEndTime:J

.field private final mMsg:Ljava/lang/String;

.field private final mStartTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x15

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mEndTime:J

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mStartTime:J

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "line":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mMsg:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method dumpToLogCat(Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-wide v2, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 43
    const-string v1, ", spent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mEndTime:J

    iget-wide v4, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    :goto_0
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "LooperHistory"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 45
    :cond_0
    const-string v1, ", running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method exceedsThreshold(J)Z
    .locals 7
    .param p1, "threshold"    # J

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-wide v2, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mEndTime:J

    iget-wide v4, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mStartTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method finish()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mEndTime:J

    .line 25
    return-void
.end method

.method isAlive(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/facebook/debug/looperhistory/common/LooperItem;->mEndTime:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
