.class public Lcom/facebook/funnellogger/core/Funnel;
.super Ljava/lang/Object;
.source "Funnel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/funnellogger/core/Funnel$Action;,
        Lcom/facebook/funnellogger/core/Funnel$EndType;,
        Lcom/facebook/funnellogger/core/Funnel$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/funnellogger/core/Funnel$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mCreatedTimeStamp:J

.field private final mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

.field private final mInstanceId:J

.field private mLastUpdatedTimestamp:J

.field private mPayload:Lcom/facebook/funnellogger/core/PayloadBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSamplingRate:I

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/funnellogger/core/Funnel$Builder;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$000(Lcom/facebook/funnellogger/core/Funnel$Builder;)Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    .line 59
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$100(Lcom/facebook/funnellogger/core/Funnel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mInstanceId:J

    .line 60
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$200(Lcom/facebook/funnellogger/core/Funnel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mCreatedTimeStamp:J

    .line 61
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$300(Lcom/facebook/funnellogger/core/Funnel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mLastUpdatedTimestamp:J

    .line 62
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$400(Lcom/facebook/funnellogger/core/Funnel$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mSamplingRate:I

    .line 63
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$500(Lcom/facebook/funnellogger/core/Funnel$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mTags:Ljava/util/List;

    .line 64
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$600(Lcom/facebook/funnellogger/core/Funnel$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mActions:Ljava/util/List;

    .line 65
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->access$700(Lcom/facebook/funnellogger/core/Funnel$Builder;)Lcom/facebook/funnellogger/core/PayloadBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mPayload:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/facebook/funnellogger/core/FunnelDefinition;JIJ)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/funnellogger/core/Funnel;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    .line 50
    iput-wide p2, p0, Lcom/facebook/funnellogger/core/Funnel;->mInstanceId:J

    .line 51
    iput-wide p5, p0, Lcom/facebook/funnellogger/core/Funnel;->mCreatedTimeStamp:J

    .line 52
    iget-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mCreatedTimeStamp:J

    iput-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mLastUpdatedTimestamp:J

    .line 53
    iput p4, p0, Lcom/facebook/funnellogger/core/Funnel;->mSamplingRate:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mActions:Ljava/util/List;

    .line 55
    return-void
.end method

.method static aquireBuilder()Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/funnellogger/core/Funnel$Builder;-><init>(Lcom/facebook/funnellogger/core/Funnel$1;)V

    return-object v0
.end method

.method static copyFunnel(Lcom/facebook/funnellogger/core/Funnel;)Lcom/facebook/funnellogger/core/Funnel;
    .locals 8

    .prologue
    .line 73
    invoke-static {}, Lcom/facebook/funnellogger/core/Funnel;->aquireBuilder()Lcom/facebook/funnellogger/core/Funnel$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getFunnelDefinition()Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setFunnelDefinition(Lcom/facebook/funnellogger/core/FunnelDefinition;)Lcom/facebook/funnellogger/core/Funnel$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getInstanceId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setFunnelInstanceId(J)Lcom/facebook/funnellogger/core/Funnel$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setSamplingRate(I)Lcom/facebook/funnellogger/core/Funnel$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getCreatedTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setCreatedTimestamp(J)Lcom/facebook/funnellogger/core/Funnel$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getLastUpdatedTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setLastUpdatedTimestamp(J)Lcom/facebook/funnellogger/core/Funnel$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setTags(Ljava/util/List;)Lcom/facebook/funnellogger/core/Funnel$Builder;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/funnellogger/core/Funnel;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel$Action;

    .line 85
    new-instance v4, Lcom/facebook/funnellogger/core/Funnel$Action;

    iget-object v5, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mName:Ljava/lang/String;

    iget v6, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mRelativeTimeStamp:I

    iget-object v7, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mTag:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/facebook/funnellogger/core/Funnel$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1, v2}, Lcom/facebook/funnellogger/core/Funnel$Builder;->setActions(Ljava/util/List;)Lcom/facebook/funnellogger/core/Funnel$Builder;

    .line 94
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/funnellogger/core/Funnel$Builder;->build()Lcom/facebook/funnellogger/core/Funnel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addFunnelPayload(Lcom/facebook/funnellogger/core/PayloadBundle;J)V
    .locals 0

    .prologue
    .line 109
    iput-wide p2, p0, Lcom/facebook/funnellogger/core/Funnel;->mLastUpdatedTimestamp:J

    .line 110
    iput-object p1, p0, Lcom/facebook/funnellogger/core/Funnel;->mPayload:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 111
    return-void
.end method

.method addTag(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mTags:Ljava/util/List;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mTags:Ljava/util/List;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iput-wide p2, p0, Lcom/facebook/funnellogger/core/Funnel;->mLastUpdatedTimestamp:J

    goto :goto_0
.end method

.method appendAction(Lcom/facebook/funnellogger/core/Funnel$Action;J)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iput-wide p2, p0, Lcom/facebook/funnellogger/core/Funnel;->mLastUpdatedTimestamp:J

    .line 116
    return-void
.end method

.method canAcceptMoreAction()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/funnellogger/core/Funnel$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedTimeStamp()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mCreatedTimeStamp:J

    return-wide v0
.end method

.method public getFunnelDefinition()Lcom/facebook/funnellogger/core/FunnelDefinition;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    return-object v0
.end method

.method public getId()S
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    iget-short v0, v0, Lcom/facebook/funnellogger/core/FunnelDefinition;->id:S

    return v0
.end method

.method public getInstanceId()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mInstanceId:J

    return-wide v0
.end method

.method getLastUpdatedTimestamp()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    iget-object v0, v0, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mSamplingRate:I

    return v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel;->mTags:Ljava/util/List;

    return-object v0
.end method
