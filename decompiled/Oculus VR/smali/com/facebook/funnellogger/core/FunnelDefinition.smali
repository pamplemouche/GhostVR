.class public abstract Lcom/facebook/funnellogger/core/FunnelDefinition;
.super Ljava/lang/Object;
.source "FunnelDefinition.java"


# instance fields
.field public final id:S

.field private mIsPseudoEndEnabled:Z

.field private mSecondsToEndSinceLastUpdate:I

.field private mShouldCreateNoopInstances:Z

.field private mShouldEndOnUserLeavingTheApp:Z

.field public final name:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 88
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/facebook/funnellogger/core/FunnelDefinition;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lcom/facebook/funnellogger/core/FunnelDefinition;

    iget-object v0, p1, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondsToEndSinceLastUpdate()I
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mSecondsToEndSinceLastUpdate:I

    const v1, 0x15180

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getShouldEndOnUserLeavingTheApp()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mShouldEndOnUserLeavingTheApp:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPseudoEndEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mIsPseudoEndEnabled:Z

    return v0
.end method

.method public shouldCreateNoopFunnels()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mShouldCreateNoopInstances:Z

    return v0
.end method
