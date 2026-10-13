.class Lcom/oculus/modules/OSUpdaterModuleImpl$OtaAvailabilityCallback;
.super Ljava/lang/Object;
.source "OSUpdaterModuleImpl.java"

# interfaces
.implements Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/OSUpdaterModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtaAvailabilityCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/modules/OSUpdaterModuleImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oculus/modules/OSUpdaterModuleImpl$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/modules/OSUpdaterModuleImpl$OtaAvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;)V
    .locals 7
    .param p1, "response"    # Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    iget-object v1, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mIsQuerySuccessful:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got successful OSUpdaterResponse. areUpdatesAvailable = %b, updaterState = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;-><init>()V

    .line 38
    .local v0, "result":Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;
    iget-object v1, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->areUpdatesAvailable:Z

    .line 39
    iget-object v1, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mCurrentOSVersion:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->currentOSVersion:Ljava/lang/String;

    .line 40
    iget-object v1, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mTargetVersion:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mTargetVersion:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->targetVersion:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v1, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    invoke-virtual {v1}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->updaterState:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 45
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 50
    .end local v0    # "result":Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got failed OSUpdaterResponse query. %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mErrorMessage:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/oculus/modules/OSUpdaterModuleImpl;->access$100()Lcom/oculus/modules/codegen/Resolver;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    iget-object v3, p1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
