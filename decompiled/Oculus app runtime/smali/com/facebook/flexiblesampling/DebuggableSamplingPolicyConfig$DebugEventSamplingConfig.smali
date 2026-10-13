.class public Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;
.super Ljava/lang/Object;
.source "DebuggableSamplingPolicyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugEventSamplingConfig"
.end annotation


# static fields
.field private static final BLACKLIST_PROBABILITY:I = -0x1


# instance fields
.field public final name:Ljava/lang/String;

.field public final probability:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;->name:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;->probability:I

    return-void
.end method

.method public static create(Ljava/lang/String;I)Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;
    .locals 1

    .line 37
    new-instance v0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;

    invoke-direct {v0, p0, p1}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createBlacklisted(Ljava/lang/String;)Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;
    .locals 2

    .line 41
    new-instance v0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public isBlacklisted()Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/facebook/flexiblesampling/DebuggableSamplingPolicyConfig$DebugEventSamplingConfig;->probability:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
