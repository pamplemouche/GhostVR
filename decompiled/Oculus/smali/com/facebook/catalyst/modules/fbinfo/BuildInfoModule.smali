.class public final Lcom/facebook/catalyst/modules/fbinfo/BuildInfoModule;
.super Lcom/facebook/fbreact/specs/NativeBuildInfoSpec;
.source "BuildInfoModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "BuildInfo"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeBuildInfoSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 24
    return-void
.end method

.method private static getSupportedAbis()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 53
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "BuildInfo"

    return-object v0
.end method

.method public getTypedExportedConstants()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbinfo/BuildInfoModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/facebook/common/manifest/AppBuildInfoReader;->getAppBuildInfo(Landroid/content/Context;)Lcom/facebook/common/manifest/AppBuildInfo;

    move-result-object v2

    .line 36
    new-instance v3, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;

    invoke-direct {v3, v1}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v4, "androidDeviceCpuAbis"

    invoke-static {}, Lcom/facebook/catalyst/modules/fbinfo/BuildInfoModule;->getSupportedAbis()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v4, "appMajorVersion"

    invoke-virtual {v3}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->getAppMajorVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v4, "appVersion"

    invoke-virtual {v3}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v4, "buildBranchName"

    iget-object v5, v2, Lcom/facebook/common/manifest/AppBuildInfo;->gitBranch:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v4, "buildRevision"

    iget-object v5, v2, Lcom/facebook/common/manifest/AppBuildInfo;->gitHash:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v4, "buildTime"

    iget-wide v6, v2, Lcom/facebook/common/manifest/AppBuildInfo;->buildUTCTimestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "buildVersion"

    invoke-virtual {v3}, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->getAppVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v2, "bundleIdentifier"

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method
