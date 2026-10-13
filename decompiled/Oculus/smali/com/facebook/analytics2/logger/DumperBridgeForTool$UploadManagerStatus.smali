.class public Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;
.super Ljava/lang/Object;
.source "DumperBridgeForTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/DumperBridgeForTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadManagerStatus"
.end annotation


# instance fields
.field public final backgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

.field public final currentlyScheduledMinDelayMs:J

.field public final foregroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;


# direct methods
.method private constructor <init>(Lcom/facebook/analytics2/logger/UploadManager;)V
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadManager;->getCurrentlyScheduledMinDelayMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;->currentlyScheduledMinDelayMs:J

    .line 171
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadManager;->getForegroundUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;->foregroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 172
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadManager;->getBackgroundUploadSchedulerParams()Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;->backgroundUploadSchedulerParams:Lcom/facebook/analytics2/logger/UploadSchedulerParams;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/UploadManager;Lcom/facebook/analytics2/logger/DumperBridgeForTool$1;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/DumperBridgeForTool$UploadManagerStatus;-><init>(Lcom/facebook/analytics2/logger/UploadManager;)V

    return-void
.end method
