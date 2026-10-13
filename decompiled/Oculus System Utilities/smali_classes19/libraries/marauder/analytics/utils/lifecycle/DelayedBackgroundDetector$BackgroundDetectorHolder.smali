.class Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$BackgroundDetectorHolder;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundDetectorHolder"
.end annotation


# static fields
.field public static final INSTANCE:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    .line 52
    invoke-static {}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->getInstance()Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;-><init>(Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;)V

    sput-object v0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$BackgroundDetectorHolder;->INSTANCE:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
