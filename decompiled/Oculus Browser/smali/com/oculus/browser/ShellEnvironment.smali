.class public Lcom/oculus/browser/ShellEnvironment;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShellEnvironment"


# instance fields
.field public mDeviceType:Ljava/lang/String;

.field public mEnvironmentBundle:Landroid/os/Bundle;

.field public mGateKeepers:Ljava/util/Map;

.field public mGatekeeperOverrides:Ljava/lang/String;

.field public mIsEnterpriseDevice:Z

.field public mPanelId:I

.field public mShellFeatureSet:Ljava/util/List;

.field public mUri:Ljava/lang/String;

.field public mVrShellVersionMajor:I

.field public mVrShellVersionMinor:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/browser/ShellEnvironment;->mEnvironmentBundle:Landroid/os/Bundle;

    .line 3
    invoke-direct {p0, p1}, Lcom/oculus/browser/ShellEnvironment;->parseGateKeepers(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mGateKeepers:Ljava/util/Map;

    .line 4
    invoke-direct {p0, p1}, Lcom/oculus/browser/ShellEnvironment;->parseVersionCode(Landroid/os/Bundle;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/oculus/browser/ShellEnvironment;->parseDeviceType(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mDeviceType:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/oculus/browser/ShellEnvironment;->parseIsEnterpriseDevice(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/browser/ShellEnvironment;->mIsEnterpriseDevice:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/oculus/browser/ShellEnvironment;->parseShellFeatureSets(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mShellFeatureSet:Ljava/util/List;

    .line 8
    invoke-direct {p0, p1}, Lcom/oculus/browser/ShellEnvironment;->parsePanelId(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/oculus/browser/ShellEnvironment;->mPanelId:I

    const-string v0, "gk_data"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mGatekeeperOverrides:Ljava/lang/String;

    const-string v0, "uri"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/ShellEnvironment;->mUri:Ljava/lang/String;

    return-void
.end method

.method private parseDeviceType(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const-string v0, "_oc_device_type"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "parseDeviceType: "

    .line 2
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShellEnvironment"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private parseGateKeepers(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "_oc_gk:"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseIsEnterpriseDevice(Landroid/os/Bundle;)Z
    .locals 4

    const-string v0, "_oc_enterprise_mode"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "parseIsEnterpriseDevice: "

    .line 2
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ShellEnvironment"

    invoke-static {v3, v0, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v0, "true"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private parsePanelId(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "multiapp-v1"

    .line 1
    invoke-virtual {p0, v0}, Lcom/oculus/browser/ShellEnvironment;->isShellFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_oc_shell_panel_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseShellFeatureSets(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1

    const-string v0, "_oc_shell_feature_sets"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    const-string v0, ","

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseVersionCode(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "_oc_shell_version_name"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 4
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/browser/ShellEnvironment;->mVrShellVersionMajor:I

    const/4 v0, 0x1

    .line 5
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oculus/browser/ShellEnvironment;->mVrShellVersionMinor:I

    :cond_0
    const-string p1, "parseversionCode: 99999999"

    .line 6
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oculus/browser/ShellEnvironment;->mVrShellVersionMajor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oculus/browser/ShellEnvironment;->mVrShellVersionMinor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ShellEnvironment"

    invoke-static {v1, p1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getGateKeeper(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mGateKeepers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getGateKeeperOverrides()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mGatekeeperOverrides:Ljava/lang/String;

    return-object v0
.end method

.method public getPanelId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oculus/browser/ShellEnvironment;->mPanelId:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isEnterpriseDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/ShellEnvironment;->mIsEnterpriseDevice:Z

    return v0
.end method

.method public isShellFeatureSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/ShellEnvironment;->mShellFeatureSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public meetsMinVrShellVersion(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/oculus/browser/ShellEnvironment;->mVrShellVersionMajor:I

    if-gt v0, p1, :cond_1

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/oculus/browser/ShellEnvironment;->mVrShellVersionMinor:I

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
