.class public Lcom/oculus/modules/NightShiftManagerModuleImpl;
.super Lcom/oculus/modules/codegen/NightShiftManagerModule;
.source "NightShiftManagerModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNightShiftController:Lcom/oculus/os/NightShiftController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oculus/modules/NightShiftManagerModuleImpl;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NightShiftManagerModule;-><init>()V

    .line 20
    new-instance v0, Lcom/oculus/os/NightShiftController;

    invoke-direct {v0, p1}, Lcom/oculus/os/NightShiftController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    .line 21
    return-void
.end method


# virtual methods
.method protected getNightShiftSettingsImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;>;"
    new-instance v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;-><init>()V

    .line 26
    .local v0, "nightShiftSettings":Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;
    iget-object v1, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {v1}, Lcom/oculus/os/NightShiftController;->isActivated()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->active:Z

    .line 27
    iget-object v1, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {v1}, Lcom/oculus/os/NightShiftController;->getAutoMode()I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->autoMode:D

    .line 28
    iget-object v1, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {v1}, Lcom/oculus/os/NightShiftController;->getCustomStartTime()I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->customStartTimeMinute:D

    .line 29
    iget-object v1, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {v1}, Lcom/oculus/os/NightShiftController;->getCustomEndTime()I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->customEndTimeMinute:D

    .line 30
    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method protected setNightShiftActiveImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 4
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {v1, p1}, Lcom/oculus/os/NightShiftController;->setActivated(Z)Z

    move-result v0

    .line 36
    .local v0, "success":Z
    sget-object v1, Lcom/oculus/modules/NightShiftManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Night Shift active state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-nez v0, :cond_0

    .line 38
    sget-object v1, Lcom/oculus/modules/NightShiftManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to activate Night Shift. Controller transaction was unsuccessful."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected setNightShiftAutoModeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .param p1, "mode"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    double-to-int v2, p1

    invoke-virtual {v1, v2}, Lcom/oculus/os/NightShiftController;->setAutoMode(I)Z

    move-result v0

    .line 47
    .local v0, "success":Z
    sget-object v1, Lcom/oculus/modules/NightShiftManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Night Shift auto mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    double-to-int v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-nez v0, :cond_0

    .line 49
    sget-object v1, Lcom/oculus/modules/NightShiftManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set Night Shift Auto Mode. Controller transaction was unsuccessful."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected setNightShiftEndTimeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .param p1, "time"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    double-to-int v0, p1

    .line 70
    .local v0, "endInt":I
    iget-object v2, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {v2, v0}, Lcom/oculus/os/NightShiftController;->setCustomEndTime(I)Z

    move-result v1

    .line 71
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 72
    sget-object v2, Lcom/oculus/modules/NightShiftManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set Night Shift End Time. Attempted to set : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Controller transaction was unsuccessful."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method protected setNightShiftStartTimeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .param p1, "time"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    double-to-int v0, p1

    .line 58
    .local v0, "startInt":I
    iget-object v2, p0, Lcom/oculus/modules/NightShiftManagerModuleImpl;->mNightShiftController:Lcom/oculus/os/NightShiftController;

    invoke-virtual {v2, v0}, Lcom/oculus/os/NightShiftController;->setCustomStartTime(I)Z

    move-result v1

    .line 59
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 60
    sget-object v2, Lcom/oculus/modules/NightShiftManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set Night Shift Start Time. Attempted to set : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Controller transaction was unsuccessful."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
