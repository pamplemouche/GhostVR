.class public Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;
.super Ljava/lang/Object;
.source "AutoUpdatesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoUpdatesDBManager:Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

.field private mEntitlements:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxRetries:Ljava/lang/Integer;

.field private mPermissionManager:Lcom/oculus/autoupdates/PermissionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;
    .locals 13

    .prologue
    const/16 v12, 0x17

    .line 314
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mPermissionManager:Lcom/oculus/autoupdates/PermissionManager;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mAutoUpdatesDBManager:Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mEntitlements:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mMaxRetries:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 320
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 321
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 323
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 325
    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 327
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mEntitlements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 328
    invoke-virtual {v0}, Lcom/oculus/library/model/App;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 335
    invoke-virtual {v0}, Lcom/oculus/library/model/App;->hasUpdate()Z

    move-result v7

    if-nez v7, :cond_1

    .line 336
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 342
    :cond_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v12, :cond_2

    iget v7, v0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    if-ge v7, v12, :cond_3

    .line 343
    :cond_2
    iget-object v7, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mPermissionManager:Lcom/oculus/autoupdates/PermissionManager;

    iget-object v8, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 345
    invoke-static {v9}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v9

    .line 344
    invoke-virtual {v7, v8, v9}, Lcom/oculus/autoupdates/PermissionManager;->getDangerousPermissionsDifference(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)Ljava/util/Set;

    move-result-object v7

    .line 346
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 347
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 352
    :cond_3
    iget-object v7, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mAutoUpdatesDBManager:Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

    iget-object v8, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-wide v10, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    long-to-int v9, v10

    .line 353
    invoke-virtual {v7, v8, v9}, Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;->getRecord(Ljava/lang/String;I)Lcom/oculus/autoupdates/database/AutoUpdateRecord;

    move-result-object v7

    .line 360
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/oculus/autoupdates/database/AutoUpdateRecord;->getAutoUpdateAttempts()I

    move-result v7

    iget-object v8, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mMaxRetries:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v7, v8, :cond_4

    .line 361
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 368
    :cond_5
    new-instance v0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;

    .line 369
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 370
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 371
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 372
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 373
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public withAutoUpdatesDBManager(Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;)Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mAutoUpdatesDBManager:Lcom/oculus/autoupdates/database/AutoUpdatesDBManager;

    .line 305
    return-object p0
.end method

.method public withEntitlements(Lcom/google/common/collect/ImmutableList;)Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)",
            "Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;"
        }
    .end annotation

    .prologue
    .line 294
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mEntitlements:Lcom/google/common/collect/ImmutableList;

    .line 295
    return-object p0
.end method

.method public withMaxRetries(I)Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;
    .locals 1

    .prologue
    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mMaxRetries:Ljava/lang/Integer;

    .line 310
    return-object p0
.end method

.method public withPermissionsManager(Lcom/oculus/autoupdates/PermissionManager;)Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateJob$Builder;->mPermissionManager:Lcom/oculus/autoupdates/PermissionManager;

    .line 300
    return-object p0
.end method
