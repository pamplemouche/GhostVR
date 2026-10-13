.class public Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;
.super Ljava/lang/Object;
.source "FbRNAppInfoProvider.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppMajorVersion:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mAppVersionCode:I

.field private final mReactBundleVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppMajorVersion:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersion:Ljava/lang/String;

    .line 16
    iput v4, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersionCode:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 22
    const-string v2, "app_id"

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppId:Ljava/lang/String;

    .line 27
    :cond_0
    const-string v2, "fb_mobile_app_name"

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppName:Ljava/lang/String;

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getInstance(Landroid/content/Context;)Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersion:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersion:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 34
    if-ltz v1, :cond_2

    .line 35
    iget-object v2, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppMajorVersion:Ljava/lang/String;

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getAppVersionCode()I

    move-result v1

    iput v1, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersionCode:I

    .line 38
    invoke-virtual {v0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getActivatedBundle()I

    move-result v0

    iput v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mReactBundleVersion:I

    .line 39
    return-void
.end method


# virtual methods
.method public getAppMajorVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppMajorVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mAppVersionCode:I

    return v0
.end method

.method public getReactBundleVersion()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/facebook/catalyst/modules/fbinfo/FbRNAppInfoProvider;->mReactBundleVersion:I

    return v0
.end method
