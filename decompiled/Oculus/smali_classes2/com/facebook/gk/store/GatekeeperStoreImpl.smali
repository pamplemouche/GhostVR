.class public Lcom/facebook/gk/store/GatekeeperStoreImpl;
.super Ljava/lang/Object;
.source "GatekeeperStoreImpl.java"

# interfaces
.implements Lcom/facebook/gk/store/GatekeeperStore;
.implements Lcom/facebook/gk/store/GatekeeperStoreManager;
.implements Lcom/facebook/gk/store/GatekeeperWriter;
.implements Lcom/facebook/gk/store/GkAccessorByName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mGatekeeperCache:Lcom/facebook/gk/store/GatekeeperCache;

.field private final mGatekeeperRepository:Lcom/facebook/gk/store/GatekeeperRepository;

.field private final mGatekeeperStoreConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

.field private final mGatekeeperStoreUserManager:Lcom/facebook/gk/store/GatekeeperStoreUserManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsLoaded:Z

.field private final mLogger:Lcom/facebook/gk/store/GatekeeperStoreLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPreExistingGatekeeperStatesProvider:Lcom/facebook/gk/store/PreExistingGatekeeperStatesProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Lcom/facebook/gk/store/GatekeeperRepository;Lcom/facebook/gk/store/PreExistingGatekeeperStatesProvider;Lcom/facebook/gk/store/GatekeeperStoreLogger;Lcom/facebook/gk/store/GatekeeperStoreUserManager;)V
    .locals 2
    .param p4    # Lcom/facebook/gk/store/GatekeeperStoreLogger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/gk/store/GatekeeperStoreUserManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl;->mIsLoaded:Z

    .line 126
    iput-object p1, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl;->mGatekeeperStoreConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    .line 127
    iput-object p2, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl;->mGatekeeperRepository:Lcom/facebook/gk/store/GatekeeperRepository;

    .line 128
    iput-object p3, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl;->mPreExistingGatekeeperStatesProvider:Lcom/facebook/gk/store/PreExistingGatekeeperStatesProvider;

    .line 129
    iput-object p4, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl;->mLogger:Lcom/facebook/gk/store/GatekeeperStoreLogger;

    .line 130
    iput-object p5, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl;->mGatekeeperStoreUserManager:Lcom/facebook/gk/store/GatekeeperStoreUserManager;

    .line 132
    new-instance v0, Lcom/facebook/gk/store/GatekeeperCache;

    invoke-interface {p1}, Lcom/facebook/gk/store/GatekeeperStoreConfig;->getNumberOfGatekeepers()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/gk/store/GatekeeperCache;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/gk/store/GatekeeperStoreImpl;->mGatekeeperCache:Lcom/facebook/gk/store/GatekeeperCache;

    .line 133
    return-void
.end method

.method public static forSessionless(Landroid/content/Context;)Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;->forSessionless()Lcom/facebook/gk/store/GatekeeperStoreImpl$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public refreshSessionState(Z)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method
