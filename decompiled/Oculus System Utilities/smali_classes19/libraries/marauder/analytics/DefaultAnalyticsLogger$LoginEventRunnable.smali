.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;
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
    name = "LoginEventRunnable"
.end annotation


# instance fields
.field private final mFacebookUserId:Ljava/lang/String;

.field private final mUserId:Ljava/lang/String;

.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "facebookUserId"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->mUserId:Ljava/lang/String;

    .line 468
    iput-object p3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->mFacebookUserId:Ljava/lang/String;

    .line 469
    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;Ljava/lang/String;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    .prologue
    .line 461
    invoke-direct {p0, p1, p2, p3}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->mUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1800(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->mFacebookUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1900(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$2000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    .line 476
    return-void
.end method
