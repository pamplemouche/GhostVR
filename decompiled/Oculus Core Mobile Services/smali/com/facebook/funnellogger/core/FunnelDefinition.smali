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


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x258

    iput v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mSecondsToEndSinceLastUpdate:I

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mShouldEndOnUserLeavingTheApp:Z

    .line 15
    iput-boolean v1, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mIsPseudoEndEnabled:Z

    .line 16
    iput-boolean v1, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mShouldCreateNoopInstances:Z

    .line 25
    iput-object p1, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->id:S

    .line 27
    return-void
.end method


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

.method public setSecondsToEndSinceLastUpdate(I)Lcom/facebook/funnellogger/core/FunnelDefinition;
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mSecondsToEndSinceLastUpdate:I

    .line 31
    return-object p0
.end method

.method public setShouldEndOnUserLeavingTheApp(Z)Lcom/facebook/funnellogger/core/FunnelDefinition;
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mShouldEndOnUserLeavingTheApp:Z

    .line 40
    return-object p0
.end method

.method public shouldCreateNoopFunnels()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->mShouldCreateNoopInstances:Z

    return v0
.end method
