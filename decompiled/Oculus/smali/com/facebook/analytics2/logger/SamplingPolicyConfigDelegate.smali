.class Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;
.super Ljava/lang/Object;
.source "SamplingPolicyConfigDelegate.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/SessionManagerCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSamplingPolicyConfig:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "Sampling policy config should not be null"

    invoke-static {p1, v0}, Lcom/facebook/common/preconditions/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;->mSamplingPolicyConfig:Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private invalidateSamplingConfig()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;->mSamplingPolicyConfig:Ljava/lang/Class;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;->resolveSamplingPolicyUpdater(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;->invalidateChecksum()V

    .line 54
    :cond_0
    return-void
.end method

.method private static resolveSamplingPolicyUpdater(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    invoke-static {p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedSamplingPolicyConfig(Ljava/lang/String;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackground()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onForeground()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public userLogin(Lcom/facebook/analytics2/logger/PigeonIdentity;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public userLogout()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SamplingPolicyConfigDelegate;->invalidateSamplingConfig()V

    .line 46
    return-void
.end method
