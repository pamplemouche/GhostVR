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
