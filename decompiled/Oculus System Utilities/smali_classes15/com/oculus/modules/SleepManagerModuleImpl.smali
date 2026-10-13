.class public final Lcom/oculus/modules/SleepManagerModuleImpl;
.super Lcom/oculus/modules/codegen/SleepManagerModule;
.source "SleepManagerModuleImpl.java"


# static fields
.field private static final DEFAULT_OCULUS_AUTOSLEEP_TIME:I = 0xf

.field private static final DEFAULT_OCULUS_AUTOWAKE:Z

.field private static final TAG:Ljava/lang/String;

.field private static final validAutoSleepTimesSeconds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSettingsManager:Lcom/oculus/os/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const-class v0, Lcom/oculus/modules/SleepManagerModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/SleepManagerModuleImpl;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0xf

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x384

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x3840

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/modules/SleepManagerModuleImpl;->validAutoSleepTimesSeconds:Ljava/util/Set;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/modules/codegen/SleepManagerModule;-><init>()V

    .line 19
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/SleepManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    return-void
.end method


# virtual methods
.method protected getSleepSettingsImpl()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;-><init>()V

    .line 42
    .local v0, "settings":Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;
    iget-object v1, p0, Lcom/oculus/modules/SleepManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "autowake"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->autoWakeEnabled:Z

    .line 44
    iget-object v1, p0, Lcom/oculus/modules/SleepManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "autosleep_time"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->autoSleepTime:D

    .line 46
    invoke-virtual {p0, v0}, Lcom/oculus/modules/SleepManagerModuleImpl;->emitOnSleepSettingsUpdated(Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;)V

    .line 47
    sget-object v1, Lcom/oculus/modules/SleepManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got OCULUS_AUTOWAKE value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->autoWakeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method protected setAutoSleepTimeImpl(D)V
    .locals 3
    .param p1, "sleepTime"    # D

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/modules/SleepManagerModuleImpl;->validAutoSleepTimesSeconds:Ljava/util/Set;

    double-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/oculus/modules/SleepManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set OCULUS_AUTOSLEEP_TIME. Invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/oculus/modules/SleepManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v1, "autosleep_time"

    double-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/os/SettingsManager;->setInt(Ljava/lang/String;I)Z

    .line 35
    invoke-virtual {p0}, Lcom/oculus/modules/SleepManagerModuleImpl;->getSleepSettingsImpl()V

    .line 36
    sget-object v0, Lcom/oculus/modules/SleepManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set OCULUS_AUTOSLEEP_TIME to value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected toggleAutoWakeImpl(Z)V
    .locals 3
    .param p1, "autoWakeEnabled"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/modules/SleepManagerModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v1, "autowake"

    invoke-virtual {v0, v1, p1}, Lcom/oculus/os/SettingsManager;->setBoolean(Ljava/lang/String;Z)Z

    .line 24
    invoke-virtual {p0}, Lcom/oculus/modules/SleepManagerModuleImpl;->getSleepSettingsImpl()V

    .line 25
    sget-object v0, Lcom/oculus/modules/SleepManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set OCULUS_AUTOWAKE to value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method
