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


# static fields
.field private static final EXTRA_MAX_DELAY_MS:Ljava/lang/String; = "max_delay_ms"

.field private static final EXTRA_MIN_DELAY_MS:Ljava/lang/String; = "min_delay_ms"


# instance fields
.field public final action:Ljava/lang/String;

.field public final maxDelayMs:J

.field public final minDelayMs:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 3

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 532
    iput-wide p1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    .line 533
    iput-wide p3, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    .line 534
    iput-object p5, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->action:Ljava/lang/String;

    return-void

    .line 529
    :cond_0
    new-instance p5, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "; maxDelay="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5

    .line 525
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxDelayMs < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 521
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minDelayMs < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v0, -0x1

    const-string v2, "min_delay_ms"

    .line 539
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v2, "max_delay_ms"

    .line 540
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "action"

    .line 541
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    .line 538
    invoke-direct/range {v3 .. v8}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 546
    iget-wide v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    const-string v3, "min_delay_ms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 547
    iget-wide v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    const-string v3, "max_delay_ms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 548
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->action:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v1

    const-string v2, "__VERSION_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
