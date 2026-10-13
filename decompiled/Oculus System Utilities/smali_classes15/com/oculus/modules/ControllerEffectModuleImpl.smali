.class public Lcom/oculus/modules/ControllerEffectModuleImpl;
.super Lcom/oculus/modules/codegen/ControllerEffectModule;
.source "ControllerEffectModuleImpl.java"


# static fields
.field private static final LASER_BEAM_EFFECTS_DEFAULT_VALUE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mSettingsManager:Lcom/oculus/os/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/modules/ControllerEffectModuleImpl;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/ControllerEffectModuleImpl;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oculus/modules/codegen/ControllerEffectModule;-><init>()V

    .line 17
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/ControllerEffectModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    .line 18
    return-void
.end method


# virtual methods
.method protected getLaserBeamVisualEffectsImpl(Lcom/oculus/modules/codegen/Resolver;)V
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
    const/4 v5, 0x0

    .line 23
    iget-object v1, p0, Lcom/oculus/modules/ControllerEffectModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "controller_laser_beam_effects"

    invoke-virtual {v1, v2, v5}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    .local v0, "laserBeamVisualEffects":Z
    sget-object v1, Lcom/oculus/modules/ControllerEffectModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Got laser beam visual effects: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    .line 27
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method protected setLaserBeamVisualEffectsImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 7
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
    const/4 v6, 0x1

    .line 35
    iget-object v1, p0, Lcom/oculus/modules/ControllerEffectModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "controller_laser_beam_effects"

    invoke-virtual {v1, v2, p1}, Lcom/oculus/os/SettingsManager;->setBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/oculus/modules/ControllerEffectModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Set laser beam visual effects: %b"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v1, Lcom/oculus/modules/ControllerEffectModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set laser beam visual effects. Database transaction was unsuccessful."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to set laser beam visual effects"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
