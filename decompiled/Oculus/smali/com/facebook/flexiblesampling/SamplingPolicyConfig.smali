.class public interface abstract Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
.super Ljava/lang/Object;
.source "SamplingPolicyConfig.java"


# virtual methods
.method public abstract invalidateChecksum()V
.end method

.method public abstract provideAppVersion()Ljava/lang/String;
.end method

.method public abstract provideConfigChecksum()Ljava/lang/String;
.end method

.method public abstract provideConfigVersions(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
.end method

.method public abstract provideLoggedInUserId()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract updatePolicyFromServer(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
