.class public Lcom/oculus/modules/MicrophoneManagerModuleImpl;
.super Lcom/oculus/modules/codegen/MicrophoneManagerModule;
.source "MicrophoneManagerModuleImpl.java"


# static fields
.field private static final DEFAULT_MIC_MUTED_STATUS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mSettingsManager:Lcom/oculus/os/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/modules/MicrophoneManagerModuleImpl;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/MicrophoneManagerModuleImpl;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oculus/modules/codegen/MicrophoneManagerModule;-><init>()V

    .line 19
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/MicrophoneManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    .line 20
    return-void
.end method


# virtual methods
.method protected getMicrophoneStatusImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 4
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
    .line 24
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/oculus/modules/MicrophoneManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "mic_muted"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 27
    .local v0, "muted":Z
    sget-object v1, Lcom/oculus/modules/MicrophoneManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got microphone status from SettingsManager. Muted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method protected setMicrophoneStatusImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 5
    .param p1, "muted"    # Z
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
    .line 33
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/oculus/modules/MicrophoneManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v3, "mic_muted"

    invoke-virtual {v2, v3, p1}, Lcom/oculus/os/SettingsManager;->setBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 37
    const-string v0, "Failed to set microphone status in SettingsManager"

    .line 39
    .local v0, "failureString":Ljava/lang/String;
    sget-object v2, Lcom/oculus/modules/MicrophoneManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "Failed to set microphone status in SettingsManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to set microphone status in SettingsManager"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 42
    .end local v0    # "failureString":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/oculus/modules/MicrophoneManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set microphone status in SettingsManager. Muted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
