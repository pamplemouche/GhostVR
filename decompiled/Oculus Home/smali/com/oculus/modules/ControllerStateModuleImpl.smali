.class public Lcom/oculus/modules/ControllerStateModuleImpl;
.super Lcom/oculus/modules/codegen/ControllerStateModule;
.source "ControllerStateModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/ControllerStateModuleImpl$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mControllers:Lcom/oculus/os/Controllers;

.field private mObserver:Lcom/oculus/modules/ControllerStateModuleImpl$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/modules/ControllerStateModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/ControllerStateModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/oculus/modules/codegen/ControllerStateModule;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/modules/ControllerStateModuleImpl;Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/ControllerStateModuleImpl;
    .param p1, "x1"    # Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/oculus/modules/ControllerStateModuleImpl;->emitOnControllerStatusChanged(Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;)V

    return-void
.end method


# virtual methods
.method protected getControllerStatusesImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;>;"
    iget-object v5, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mControllers:Lcom/oculus/os/Controllers;

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mControllers:Lcom/oculus/os/Controllers;

    .line 55
    .local v0, "controllers":Lcom/oculus/os/Controllers;
    :goto_0
    sget-object v2, Lcom/oculus/os/Controllers$ControllerStatus;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 56
    .local v2, "primary":Lcom/oculus/os/Controllers$ControllerStatus;
    sget-object v3, Lcom/oculus/os/Controllers$ControllerStatus;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerStatus;

    .line 59
    .local v3, "secondary":Lcom/oculus/os/Controllers$ControllerStatus;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Lcom/oculus/os/Controllers;->getPairedDeviceStatus(I)Lcom/oculus/os/Controllers$ControllerStatus;

    move-result-object v2

    .line 60
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/oculus/os/Controllers;->getPairedDeviceStatus(I)Lcom/oculus/os/Controllers$ControllerStatus;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 65
    :goto_1
    new-instance v4, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;

    invoke-direct {v4}, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;-><init>()V

    .line 66
    .local v4, "statuses":Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;
    invoke-virtual {v2}, Lcom/oculus/os/Controllers$ControllerStatus;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;->primary:Ljava/lang/String;

    .line 67
    invoke-virtual {v3}, Lcom/oculus/os/Controllers$ControllerStatus;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;->secondary:Ljava/lang/String;

    .line 68
    invoke-interface {p1, v4}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 69
    return-void

    .line 54
    .end local v0    # "controllers":Lcom/oculus/os/Controllers;
    .end local v2    # "primary":Lcom/oculus/os/Controllers$ControllerStatus;
    .end local v3    # "secondary":Lcom/oculus/os/Controllers$ControllerStatus;
    .end local v4    # "statuses":Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;
    :cond_0
    new-instance v0, Lcom/oculus/os/Controllers;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/oculus/os/Controllers;-><init>(Lcom/oculus/os/Controllers$ControllerStatusObserver;)V

    goto :goto_0

    .line 61
    .restart local v0    # "controllers":Lcom/oculus/os/Controllers;
    .restart local v2    # "primary":Lcom/oculus/os/Controllers$ControllerStatus;
    .restart local v3    # "secondary":Lcom/oculus/os/Controllers$ControllerStatus;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/oculus/modules/ControllerStateModuleImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPairedDeviceStatus Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected startListeningForStatusChangesImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mObserver:Lcom/oculus/modules/ControllerStateModuleImpl$Observer;

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/oculus/modules/ControllerStateModuleImpl$Observer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/modules/ControllerStateModuleImpl$Observer;-><init>(Lcom/oculus/modules/ControllerStateModuleImpl;Lcom/oculus/modules/ControllerStateModuleImpl$1;)V

    iput-object v0, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mObserver:Lcom/oculus/modules/ControllerStateModuleImpl$Observer;

    .line 37
    new-instance v0, Lcom/oculus/os/Controllers;

    iget-object v1, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mObserver:Lcom/oculus/modules/ControllerStateModuleImpl$Observer;

    invoke-direct {v0, v1}, Lcom/oculus/os/Controllers;-><init>(Lcom/oculus/os/Controllers$ControllerStatusObserver;)V

    iput-object v0, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mControllers:Lcom/oculus/os/Controllers;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected stopListeningForStatusChangesImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mObserver:Lcom/oculus/modules/ControllerStateModuleImpl$Observer;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-object v1, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mObserver:Lcom/oculus/modules/ControllerStateModuleImpl$Observer;

    .line 48
    iput-object v1, p0, Lcom/oculus/modules/ControllerStateModuleImpl;->mControllers:Lcom/oculus/os/Controllers;

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method
