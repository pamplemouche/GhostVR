.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/DefaultAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreBatchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p2, "x1"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    .prologue
    .line 506
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->maybeStoreCurrentBatch()V

    .line 511
    return-void
.end method
