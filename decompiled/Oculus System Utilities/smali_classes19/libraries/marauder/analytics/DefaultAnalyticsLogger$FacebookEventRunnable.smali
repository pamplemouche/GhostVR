.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$FacebookEventRunnable;
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
    name = "FacebookEventRunnable"
.end annotation


# instance fields
.field private final mFacebookUserId:Ljava/lang/String;

.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;)V
    .locals 0
    .param p2, "facebookUserId"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$FacebookEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$FacebookEventRunnable;->mFacebookUserId:Ljava/lang/String;

    .line 489
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$FacebookEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$FacebookEventRunnable;->mFacebookUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1900(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$FacebookEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$2000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    .line 495
    return-void
.end method
