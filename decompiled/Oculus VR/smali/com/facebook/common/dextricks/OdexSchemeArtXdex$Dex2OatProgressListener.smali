.class Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;
.super Ljava/lang/Object;
.source "OdexSchemeArtXdex.java"

# interfaces
.implements Lcom/facebook/common/dextricks/DexStore$ExternalProcessProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/OdexSchemeArtXdex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dex2OatProgressListener"
.end annotation


# static fields
.field private static final CHECKPOINT_PERIOD:J

.field private static final EVENT_NAME:Ljava/lang/String; = "OptsvcEvent"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mAttemptNumber:I

.field private mExitStatus:Ljava/lang/Integer;

.field private final mJobName:Ljava/lang/String;

.field private mLastCheckpointMs:J

.field private final mStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1354
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->CHECKPOINT_PERIOD:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    invoke-static {p1}, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;->access$000(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mAppContext:Landroid/content/Context;

    .line 1366
    iput-object p2, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mJobName:Ljava/lang/String;

    .line 1367
    iput p3, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mAttemptNumber:I

    .line 1368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mStartTimeMs:J

    .line 1369
    iget-wide v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mStartTimeMs:J

    iput-wide v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mLastCheckpointMs:J

    .line 1370
    return-void
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mExitStatus:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1398
    const-string v0, "Bad call to logEvent, exit status not set"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1412
    :goto_0
    return-void

    .line 1401
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mStartTimeMs:J

    sub-long/2addr v0, v2

    .line 1402
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1403
    const-string v3, "job_name"

    iget-object v4, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mJobName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    const-string v3, "step"

    const-string v4, "finish"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const-string v0, "exit_code"

    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mExitStatus:Ljava/lang/Integer;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    const-string v0, "detail_msg"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    :cond_1
    const-string v0, "attempt_number"

    iget v1, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mAttemptNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mAppContext:Landroid/content/Context;

    const-string v1, "OptsvcEvent"

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onCheckpoint()V
    .locals 6

    .prologue
    .line 1378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1379
    iget-wide v2, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mLastCheckpointMs:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->CHECKPOINT_PERIOD:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1380
    iput-wide v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mLastCheckpointMs:J

    .line 1381
    iget-wide v2, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mStartTimeMs:J

    sub-long/2addr v0, v2

    .line 1382
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1383
    const-string v3, "job_name"

    iget-object v4, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mJobName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    const-string v3, "step"

    const-string v4, "checkpoint"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    const-string v0, "attempt_number"

    iget v1, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mAttemptNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mAppContext:Landroid/content/Context;

    const-string v1, "OptsvcEvent"

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1389
    :cond_0
    return-void
.end method

.method public onComplete(I)V
    .locals 1

    .prologue
    .line 1393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mExitStatus:Ljava/lang/Integer;

    .line 1394
    return-void
.end method

.method public writeJobHistory()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex$Dex2OatProgressListener;->mJobName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/OptSvcAnalyticsStore;->writeJobStartTimestamp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1374
    return-void
.end method
