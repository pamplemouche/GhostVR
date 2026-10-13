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

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iget-object v0, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->status:Lcom/oculus/library/model/AppStatus;

    .line 218
    iget-object v0, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 219
    iget-wide v0, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->recentActivityMs:J

    .line 220
    iget-wide v0, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->totalActivityMs:J

    .line 221
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isFavorite:Z

    .line 222
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isUnseen:Z

    .line 223
    iget-wide v0, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->patchDownloadSize:J

    .line 224
    iget-object p1, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    iput-object p1, p0, Lcom/oculus/library/model/App$Builder$LocalData;->installedBinaryId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$800(Lcom/oculus/library/model/App$Builder$LocalData;Lcom/oculus/library/model/App$Builder;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/oculus/library/model/App$Builder$LocalData;->applyToBuilder(Lcom/oculus/library/model/App$Builder;)V

    return-void
.end method

.method private applyToBuilder(Lcom/oculus/library/model/App$Builder;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->status:Lcom/oculus/library/model/AppStatus;

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$002(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/AppStatus;

    .line 229
    iget-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$102(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/CloudStorageStatus;)Lcom/oculus/library/model/CloudStorageStatus;

    .line 230
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->recentActivityMs:J

    invoke-static {p1, v0, v1}, Lcom/oculus/library/model/App$Builder;->access$202(Lcom/oculus/library/model/App$Builder;J)J

    .line 231
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->totalActivityMs:J

    invoke-static {p1, v0, v1}, Lcom/oculus/library/model/App$Builder;->access$302(Lcom/oculus/library/model/App$Builder;J)J

    .line 232
    iget-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isFavorite:Z

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$402(Lcom/oculus/library/model/App$Builder;Z)Z

    .line 233
    iget-boolean v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->isUnseen:Z

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$502(Lcom/oculus/library/model/App$Builder;Z)Z

    .line 234
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->patchDownloadSize:J

    invoke-static {p1, v0, v1}, Lcom/oculus/library/model/App$Builder;->access$602(Lcom/oculus/library/model/App$Builder;J)J

    .line 235
    iget-object v0, p0, Lcom/oculus/library/model/App$Builder$LocalData;->installedBinaryId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oculus/library/model/App$Builder;->access$702(Lcom/oculus/library/model/App$Builder;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
