.class public Lcom/oculus/library/model/App$Builder$LocalData;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/model/App$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalData"
.end annotation


# instance fields
.field public final cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

.field public final downloadedBytes:J

.field public final installedBinaryId:Ljava/lang/String;

.field public final isFavorite:Z

.field public final isUnseen:Z

.field public final patchDownloadSize:J

.field public final recentActivityMs:J

.field public final status:Lcom/oculus/library/model/AppStatus;

.field public final totalActivityMs:J


# direct methods
.method public constructor <init>(Lcom/oculus/library/model/App;)V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iget-object v0, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->status:Lcom/oculus/library/model/AppStatus;

    .line 286
    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->downloadedBytes:J

    .line 287
    iget-object v0, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 288
    iget-wide v0, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->recentActivityMs:J

    .line 289
    iget-wide v0, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->totalActivityMs:J

    .line 290
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isFavorite:Z

    .line 291
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isUnseen:Z

    .line 292
    iget-wide v0, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->patchDownloadSize:J

    .line 293
    iget-object v0, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->installedBinaryId:Ljava/lang/String;

    .line 294
    return-void
.end method

.method static synthetic access$900(Lcom/oculus/library/model/App$Builder$LocalData;Lcom/oculus/library/model/App$Builder;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/oculus/library/model/App$Builder$LocalData;->applyToBuilder(Lcom/oculus/library/model/App$Builder;)V

    return-void
.end method

.method private applyToBuilder(Lcom/oculus/library/model/App$Builder;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->status:Lcom/oculus/library/model/AppStatus;

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$002(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/AppStatus;

    .line 298
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->downloadedBytes:J

    invoke-static {p1, v0, v1}, Lcom/oculus/library/model/App$Builder;->access$102(Lcom/oculus/library/model/App$Builder;J)J

    .line 299
    iget-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$202(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/CloudStorageStatus;)Lcom/oculus/library/model/CloudStorageStatus;

    .line 300
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->recentActivityMs:J

    invoke-static {p1, v0, v1}, Lcom/oculus/library/model/App$Builder;->access$302(Lcom/oculus/library/model/App$Builder;J)J

    .line 301
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->totalActivityMs:J

    invoke-static {p1, v0, v1}, Lcom/oculus/library/model/App$Builder;->access$402(Lcom/oculus/library/model/App$Builder;J)J

    .line 302
    iget-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isFavorite:Z

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$502(Lcom/oculus/library/model/App$Builder;Z)Z

    .line 303
    iget-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isUnseen:Z

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$602(Lcom/oculus/library/model/App$Builder;Z)Z

    .line 304
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->patchDownloadSize:J

    invoke-static {p1, v0, v1}, Lcom/oculus/library/model/App$Builder;->access$702(Lcom/oculus/library/model/App$Builder;J)J

    .line 305
    iget-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->installedBinaryId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$802(Lcom/oculus/library/model/App$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    return-void
.end method
