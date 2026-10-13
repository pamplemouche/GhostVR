.class public Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
.super Ljava/lang/Object;
.source "UploadServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FallbackConfig"
.end annotation


# instance fields
.field public final action:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final maxDelayMs:J

.field public final minDelayMs:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minDelayMs < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDelayMs < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; maxDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_2
    iput-wide p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    .line 537
    iput-wide p3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    .line 538
    iput-object p5, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->action:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 542
    const-string v0, "min_delay_ms"

    .line 543
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "max_delay_ms"

    .line 544
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "action"

    .line 545
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 542
    invoke-direct/range {v1 .. v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    .line 546
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 549
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    const-string v1, "min_delay_ms"

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 551
    const-string v1, "max_delay_ms"

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 552
    const-string v1, "action"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v1, "__VERSION_CODE"

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    return-object v0
.end method
