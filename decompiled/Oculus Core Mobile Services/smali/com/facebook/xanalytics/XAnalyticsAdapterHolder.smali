.class public Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;
.super Lcom/facebook/xanalytics/XAnalyticsHolder;
.source "XAnalyticsAdapterHolder.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "xanalyticsadapter-jni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/facebook/xanalytics/XAnalyticsAdapter;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p1}, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->initHybrid(Lcom/facebook/xanalytics/XAnalyticsAdapter;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/xanalytics/XAnalyticsHolder;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 23
    iput-object p1, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    .line 24
    return-void
.end method

.method private static native initHybrid(Lcom/facebook/xanalytics/XAnalyticsAdapter;)Lcom/facebook/jni/HybridData;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end method


# virtual methods
.method public cleanup()V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    invoke-interface {v0}, Lcom/facebook/xanalytics/XAnalyticsAdapter;->cleanup()V

    .line 66
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    invoke-interface {v0}, Lcom/facebook/xanalytics/XAnalyticsAdapter;->flush()V

    .line 60
    return-void
.end method

.method public getStructureSamplingConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    invoke-interface {v0, p1}, Lcom/facebook/xanalytics/XAnalyticsAdapter;->getStructureSamplingConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logCounter(Ljava/lang/String;J)V
    .locals 4
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    long-to-double v2, p2

    invoke-interface {v0, p1, v2, v3}, Lcom/facebook/xanalytics/XAnalyticsAdapter;->logCounter(Ljava/lang/String;D)V

    .line 54
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 29
    iget-object v1, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    const/4 v5, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/facebook/xanalytics/XAnalyticsAdapter;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V

    .line 30
    return-void
.end method

.method public logRealtimeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/facebook/xanalytics/XAnalyticsAdapter;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V

    .line 48
    return-void
.end method

.method public logRealtimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/facebook/xanalytics/XAnalyticsAdapterHolder;->mAdapter:Lcom/facebook/xanalytics/XAnalyticsAdapter;

    const/4 v5, 0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/facebook/xanalytics/XAnalyticsAdapter;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V

    .line 42
    return-void
.end method
