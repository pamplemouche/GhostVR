.class public final Lcom/facebook/acra/config/StartupBlockingConfig;
.super Ljava/lang/Object;
.source "StartupBlockingConfig.java"


# static fields
.field public static final BLOCKING_UPLOAD_MAX_WAIT_MILLIS:J = 0x2710L


# instance fields
.field public final maxTimeSpentBlockedOnUploadMs:J

.field public final minNumQueuedReportsToBlockStartup:I

.field public final notificationText:I

.field public final notificationTitle:I

.field public final notifyWhileBlockingStartup:Z


# direct methods
.method public constructor <init>(ZIJII)V
    .locals 1
    .param p1, "notifyWhileBlockingStartup"    # Z
    .param p2, "minNumQueuedReportsToBlockStartup"    # I
    .param p3, "maxTimeSpentBlockedOnUploadMs"    # J
    .param p5, "notificationTitle"    # I
    .param p6, "notificationText"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/facebook/acra/config/StartupBlockingConfig;->notifyWhileBlockingStartup:Z

    .line 24
    iput p2, p0, Lcom/facebook/acra/config/StartupBlockingConfig;->minNumQueuedReportsToBlockStartup:I

    .line 25
    iput-wide p3, p0, Lcom/facebook/acra/config/StartupBlockingConfig;->maxTimeSpentBlockedOnUploadMs:J

    .line 26
    iput p5, p0, Lcom/facebook/acra/config/StartupBlockingConfig;->notificationTitle:I

    .line 27
    iput p6, p0, Lcom/facebook/acra/config/StartupBlockingConfig;->notificationText:I

    .line 28
    return-void
.end method
