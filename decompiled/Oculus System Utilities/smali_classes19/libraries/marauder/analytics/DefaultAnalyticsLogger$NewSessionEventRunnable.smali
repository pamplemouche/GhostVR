.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$NewSessionEventRunnable;
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
    name = "NewSessionEventRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$NewSessionEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p2, "x1"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$NewSessionEventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$NewSessionEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$2000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    .line 503
    return-void
.end method
