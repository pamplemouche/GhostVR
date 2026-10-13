.class public final Lcom/oculus/vrshell/config/EnterpriseConfig;
.super Ljava/lang/Object;
.source "EnterpriseConfig.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/oculus/os/enterprise/Configuration;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/vrshell/config/EnterpriseConfig;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/config/EnterpriseConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {p1}, Lcom/oculus/os/enterprise/EnterpriseServer;->getConfiguration(Landroid/content/Context;)Lcom/oculus/os/enterprise/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    return-void
.end method


# virtual methods
.method defaultAppIsConfigured(I)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Configuration;->getModes()[Lcom/oculus/os/enterprise/Mode;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/oculus/os/enterprise/Mode;->getDefaultApplication()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getControllerMode()I
    .locals 4

    .line 71
    sget-object v0, Lcom/oculus/vrshell/config/EnterpriseConfig$1;->$SwitchMap$com$oculus$os$enterprise$ControllerMode:[I

    iget-object v1, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v1}, Lcom/oculus/os/enterprise/Configuration;->getControllerMode()Lcom/oculus/os/enterprise/ControllerMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/os/enterprise/ControllerMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 79
    sget-object v0, Lcom/oculus/vrshell/config/EnterpriseConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Controller Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v3}, Lcom/oculus/os/enterprise/Configuration;->getControllerMode()Lcom/oculus/os/enterprise/ControllerMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method getDefaultApplication(I)Ljava/lang/String;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Configuration;->getModes()[Lcom/oculus/os/enterprise/Mode;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/oculus/os/enterprise/Mode;->getDefaultApplication()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method getDefaultMode()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Configuration;->getDefaultModeIndex()I

    move-result v0

    return v0
.end method

.method getGuardianMode()I
    .locals 4

    .line 86
    sget-object v0, Lcom/oculus/vrshell/config/EnterpriseConfig$1;->$SwitchMap$com$oculus$os$enterprise$GuardianMode:[I

    iget-object v1, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v1}, Lcom/oculus/os/enterprise/Configuration;->getGuardianMode()Lcom/oculus/os/enterprise/GuardianMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/os/enterprise/GuardianMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 92
    sget-object v0, Lcom/oculus/vrshell/config/EnterpriseConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Guardian Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v3}, Lcom/oculus/os/enterprise/Configuration;->getGuardianMode()Lcom/oculus/os/enterprise/GuardianMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getLicenseExpireUnixTime()J
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Configuration;->getLicenseExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getModes()[Ljava/lang/String;
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/oculus/vrshell/config/EnterpriseConfig;->mConfig:Lcom/oculus/os/enterprise/Configuration;

    invoke-interface {v0}, Lcom/oculus/os/enterprise/Configuration;->getModes()[Lcom/oculus/os/enterprise/Mode;

    move-result-object v0

    .line 24
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 25
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 26
    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/oculus/os/enterprise/Mode;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
