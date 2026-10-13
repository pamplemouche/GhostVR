.class public Lcom/oculus/modules/ControllerManagerModuleImpl;
.super Lcom/oculus/modules/codegen/ControllerManagerModule;
.source "ControllerManagerModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/modules/ControllerManagerModuleImpl;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/ControllerManagerModuleImpl;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/oculus/modules/codegen/ControllerManagerModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOculusButtonLongPressImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 6
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
    .line 57
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->LONG_PRESS:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    invoke-virtual {v1}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->isSet()Z

    move-result v0

    .line 58
    .local v0, "longPress":Z
    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Got Oculus button long press status: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected getOculusButtonMovementDetectionImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 6
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    sget-object v3, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->FLAIL_LOCKOUT_DISABLED:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    .line 82
    invoke-virtual {v3}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->isSet()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 83
    .local v0, "movementDetection":Z
    :goto_0
    sget-object v3, Lcom/oculus/modules/ControllerManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "Got Oculus button movement detection status: %b"

    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    .line 84
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 87
    return-void

    .end local v0    # "movementDetection":Z
    :cond_0
    move v0, v2

    .line 82
    goto :goto_0
.end method

.method protected setOculusButtonLongPressImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 6
    .param p1, "enabled"    # Z
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
    .line 66
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->LONG_PRESS:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    invoke-virtual {v1, p1}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->set(Z)Z

    move-result v0

    .line 67
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 68
    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Set Oculus button long press status: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 68
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 76
    return-void

    .line 71
    :cond_0
    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set Oculus button mapping. Database transaction was unsuccessful."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to set Oculus button mapping"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected setOculusButtonMovementDetectionImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 6
    .param p1, "enabled"    # Z
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
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    sget-object v4, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->FLAIL_LOCKOUT_DISABLED:Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;

    if-nez p1, :cond_0

    move v1, v2

    .line 93
    :goto_0
    invoke-virtual {v4, v1}, Lcom/oculus/modules/ControllerManagerModuleImpl$OculusButtonMapping;->set(Z)Z

    move-result v0

    .line 94
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 95
    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "Set Oculus button movement detection status: %b"

    new-array v2, v2, [Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    .line 95
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 103
    return-void

    .end local v0    # "success":Z
    :cond_0
    move v1, v3

    .line 92
    goto :goto_0

    .line 98
    .restart local v0    # "success":Z
    :cond_1
    sget-object v1, Lcom/oculus/modules/ControllerManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set Oculus button mapping. Database transaction was unsuccessful."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to set Oculus button mapping"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
