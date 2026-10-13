.class Lcom/facebook/funnellogger/core/Funnel$Builder;
.super Ljava/lang/Object;
.source "Funnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/funnellogger/core/Funnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
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

.field private mCreatedTimestamp:J

.field private mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

.field private mInstanceId:J

.field private mLastUpdatedTimestamp:J

.field private mPayload:Lcom/facebook/funnellogger/core/PayloadBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSamplingRate:I

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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/funnellogger/core/Funnel$1;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/Funnel$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/funnellogger/core/Funnel$Builder;)Lcom/facebook/funnellogger/core/FunnelDefinition;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/funnellogger/core/Funnel$Builder;)J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mInstanceId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/facebook/funnellogger/core/Funnel$Builder;)J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mCreatedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/facebook/funnellogger/core/Funnel$Builder;)J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/facebook/funnellogger/core/Funnel$Builder;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mSamplingRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/funnellogger/core/Funnel$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mTags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/funnellogger/core/Funnel$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/funnellogger/core/Funnel$Builder;)Lcom/facebook/funnellogger/core/PayloadBundle;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mPayload:Lcom/facebook/funnellogger/core/PayloadBundle;

    return-object v0
.end method


# virtual methods
.method build()Lcom/facebook/funnellogger/core/Funnel;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel;

    invoke-direct {v0, p0}, Lcom/facebook/funnellogger/core/Funnel;-><init>(Lcom/facebook/funnellogger/core/Funnel$Builder;)V

    return-object v0
.end method

.method setActions(Ljava/util/List;)Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/funnellogger/core/Funnel$Action;",
            ">;)",
            "Lcom/facebook/funnellogger/core/Funnel$Builder;"
        }
    .end annotation

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mActions:Ljava/util/List;

    .line 210
    return-object p0
.end method

.method setCreatedTimestamp(J)Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 1

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mCreatedTimestamp:J

    .line 195
    return-object p0
.end method

.method setFunnelDefinition(Lcom/facebook/funnellogger/core/FunnelDefinition;)Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    .line 180
    return-object p0
.end method

.method setFunnelInstanceId(J)Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 1

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mInstanceId:J

    .line 185
    return-object p0
.end method

.method setLastUpdatedTimestamp(J)Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 1

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mLastUpdatedTimestamp:J

    .line 200
    return-object p0
.end method

.method setSamplingRate(I)Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mSamplingRate:I

    .line 190
    return-object p0
.end method

.method setTags(Ljava/util/List;)Lcom/facebook/funnellogger/core/Funnel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/funnellogger/core/Funnel$Builder;"
        }
    .end annotation

    .prologue
    .line 204
    iput-object p1, p0, Lcom/facebook/funnellogger/core/Funnel$Builder;->mTags:Ljava/util/List;

    .line 205
    return-object p0
.end method
