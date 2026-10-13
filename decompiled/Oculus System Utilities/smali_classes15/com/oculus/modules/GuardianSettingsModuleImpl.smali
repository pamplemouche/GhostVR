.class public Lcom/oculus/modules/GuardianSettingsModuleImpl;
.super Lcom/oculus/modules/codegen/GuardianSettingsModule;
.source "GuardianSettingsModuleImpl.java"


# static fields
.field private static final CAMERA_LINE_FREQUENCY_DETECTION:Ljava/lang/String; = "oculus.software.camera.line_frequency_detection"

.field private static final DEFAULT_ELECTRIC_GRID_LINE_FREQUENCY:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSettingsManager:Lcom/oculus/os/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/modules/GuardianSettingsModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/modules/codegen/GuardianSettingsModule;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->mContext:Landroid/content/Context;

    .line 13
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    .line 22
    iput-object p1, p0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected getElectricalGridValueImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    iget-object v1, p0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oculus.software.camera.line_frequency_detection"

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    sget-object v1, Lcom/oculus/modules/GuardianSettingsModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error: Line frequency detection feature not supported, but getElectricalGridValueImpl was called!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "electric_grid_line_frequency"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, "value":I
    new-instance v1, Ljava/lang/Double;

    int-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setElectricalGridValueImpl(D)V
    .locals 5
    .param p1, "frequency"    # D

    .prologue
    .line 43
    iget-object v1, p0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oculus.software.camera.line_frequency_detection"

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    sget-object v1, Lcom/oculus/modules/GuardianSettingsModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error: Line frequency detection feature not supported, but setElectricalGridValueImpl was called!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    double-to-int v0, p1

    .line 52
    .local v0, "frequencyInt":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    .line 53
    sget-object v1, Lcom/oculus/modules/GuardianSettingsModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setElectricalGridValue got bad value! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/oculus/modules/GuardianSettingsModuleImpl;->mSettingsManager:Lcom/oculus/os/SettingsManager;

    const-string v2, "electric_grid_line_frequency"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/os/SettingsManager;->setInt(Ljava/lang/String;I)Z

    .line 58
    sget-object v1, Lcom/oculus/modules/GuardianSettingsModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setElectricalGridFrequency value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
