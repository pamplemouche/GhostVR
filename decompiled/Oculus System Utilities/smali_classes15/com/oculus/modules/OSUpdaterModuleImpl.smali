.class public Lcom/oculus/modules/OSUpdaterModuleImpl;
.super Lcom/oculus/modules/codegen/OSUpdaterModule;
.source "OSUpdaterModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/OSUpdaterModuleImpl$OtaUpdateProgressCallback;,
        Lcom/oculus/modules/OSUpdaterModuleImpl$OtaAvailabilityCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mResolver:Lcom/oculus/modules/codegen/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mOsUpdater:Lcom/oculus/osupdaterapi/OsUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/modules/OSUpdaterModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/OSUpdaterModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oculus/modules/codegen/OSUpdaterModule;-><init>()V

    .line 23
    sput-object p1, Lcom/oculus/modules/OSUpdaterModuleImpl;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdater;

    invoke-direct {v0, p1}, Lcom/oculus/osupdaterapi/OsUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/modules/OSUpdaterModuleImpl;->mOsUpdater:Lcom/oculus/osupdaterapi/OsUpdater;

    .line 25
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/modules/OSUpdaterModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/oculus/modules/codegen/Resolver;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/modules/OSUpdaterModuleImpl;->mResolver:Lcom/oculus/modules/codegen/Resolver;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/modules/OSUpdaterModuleImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected checkIfUpdatesAreAvailableImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;>;"
    const/4 v3, 0x0

    .line 83
    sput-object p1, Lcom/oculus/modules/OSUpdaterModuleImpl;->mResolver:Lcom/oculus/modules/codegen/Resolver;

    .line 84
    iget-object v0, p0, Lcom/oculus/modules/OSUpdaterModuleImpl;->mOsUpdater:Lcom/oculus/osupdaterapi/OsUpdater;

    const/4 v1, 0x0

    new-instance v2, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaAvailabilityCallback;

    invoke-direct {v2, v3}, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaAvailabilityCallback;-><init>(Lcom/oculus/modules/OSUpdaterModuleImpl$1;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/oculus/osupdaterapi/OsUpdater;->checkIfUpdatesAreAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V

    .line 85
    return-void
.end method

.method protected downloadUpdateIfAvailableImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;>;"
    const/4 v4, 0x0

    .line 90
    sput-object p1, Lcom/oculus/modules/OSUpdaterModuleImpl;->mResolver:Lcom/oculus/modules/codegen/Resolver;

    .line 91
    iget-object v0, p0, Lcom/oculus/modules/OSUpdaterModuleImpl;->mOsUpdater:Lcom/oculus/osupdaterapi/OsUpdater;

    const/4 v1, 0x0

    new-instance v2, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaAvailabilityCallback;

    invoke-direct {v2, v4}, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaAvailabilityCallback;-><init>(Lcom/oculus/modules/OSUpdaterModuleImpl$1;)V

    new-instance v3, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaUpdateProgressCallback;

    invoke-direct {v3, v4}, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaUpdateProgressCallback;-><init>(Lcom/oculus/modules/OSUpdaterModuleImpl$1;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/oculus/osupdaterapi/OsUpdater;->downloadUpdateIfAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;)V

    .line 96
    return-void
.end method

.method protected rebootAndApplyUpdateImpl()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oculus/modules/OSUpdaterModuleImpl;->mOsUpdater:Lcom/oculus/osupdaterapi/OsUpdater;

    invoke-virtual {v0}, Lcom/oculus/osupdaterapi/OsUpdater;->rebootAndApplyUpdate()V

    .line 101
    return-void
.end method
