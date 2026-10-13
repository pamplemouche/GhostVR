.class Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;
.super Ljava/lang/Object;
.source "BatchDynamicMetadataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Config"
.end annotation


# instance fields
.field private final mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    iput-object p1, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    return-void
.end method


# virtual methods
.method public collectConfigInfo(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    invoke-interface {v0}, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;->provideConfigChecksum()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config_checksum"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    invoke-interface {v0, p1}, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;->provideConfigVersions(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    return-void
.end method

.method public collectConfigUserAndApp(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    invoke-interface {v0}, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;->provideLoggedInUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper$Config;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    invoke-interface {v0}, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;->provideAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_ver"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
