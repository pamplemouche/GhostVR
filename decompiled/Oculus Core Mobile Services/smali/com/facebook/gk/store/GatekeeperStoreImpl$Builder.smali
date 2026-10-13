.class public Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;
.super Ljava/lang/Object;
.source "GatekeeperStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gk/store/GatekeeperStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

.field private final mContext:Landroid/content/Context;

.field private mIsSessionless:Z

.field private mLogger:Lcom/facebook/gk/store/GatekeeperStoreLogger;

.field private mPreExistingGatekeeperStatesProvider:Lcom/facebook/gk/store/PreExistingGatekeeperStatesProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mContext:Landroid/content/Context;

    .line 450
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/gk/store/GatekeeperStoreImpl;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/preconditions/Preconditions;->checkState(Z)V

    .line 483
    iget-boolean v0, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mIsSessionless:Z

    if-eqz v0, :cond_1

    const-string v0, "sessionless_gatekeepers"

    .line 484
    :goto_1
    iget-object v2, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 485
    new-instance v2, Lcom/facebook/gk/store/GatekeeperRepository;

    iget-object v1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    invoke-direct {v2, v1, v0}, Lcom/facebook/gk/store/GatekeeperRepository;-><init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Ljava/io/File;)V

    .line 486
    iget-boolean v1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mIsSessionless:Z

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    .line 489
    :goto_2
    new-instance v0, Lcom/facebook/gk/store/GatekeeperStoreImpl;

    iget-object v1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    iget-object v3, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mPreExistingGatekeeperStatesProvider:Lcom/facebook/gk/store/PreExistingGatekeeperStatesProvider;

    iget-object v4, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mLogger:Lcom/facebook/gk/store/GatekeeperStoreLogger;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/gk/store/GatekeeperStoreImpl;-><init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Lcom/facebook/gk/store/GatekeeperRepository;Lcom/facebook/gk/store/PreExistingGatekeeperStatesProvider;Lcom/facebook/gk/store/GatekeeperStoreLogger;Lcom/facebook/gk/store/GatekeeperStoreUserManager;)V

    return-object v0

    :cond_0
    move v0, v1

    .line 481
    goto :goto_0

    .line 483
    :cond_1
    const-string v0, "gatekeepers"

    goto :goto_1

    .line 486
    :cond_2
    new-instance v5, Lcom/facebook/gk/store/GatekeeperStoreUserManager;

    iget-object v1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    invoke-direct {v5, v1, v0}, Lcom/facebook/gk/store/GatekeeperStoreUserManager;-><init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Ljava/io/File;)V

    goto :goto_2
.end method

.method forSessionless()Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mIsSessionless:Z

    .line 460
    return-object p0
.end method

.method public withConfig(Lcom/facebook/gk/store/GatekeeperStoreConfig;)Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    .line 454
    return-object p0
.end method

.method public withLogger(Lcom/facebook/gk/store/GatekeeperStoreLogger;)Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->mLogger:Lcom/facebook/gk/store/GatekeeperStoreLogger;

    .line 477
    return-object p0
.end method
