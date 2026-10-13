.class Lcom/oculus/logging/funnel/FunnelLoggerManager$AlwaysOnSampler;
.super Ljava/lang/Object;
.source "FunnelLoggerManager.java"

# interfaces
.implements Lcom/facebook/funnellogger/core/Sampler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/logging/funnel/FunnelLoggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlwaysOnSampler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/logging/funnel/FunnelLoggerManager$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/oculus/logging/funnel/FunnelLoggerManager$AlwaysOnSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sample(Lcom/facebook/funnellogger/core/FunnelDefinition;)I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
