.class Lcom/facebook/funnellogger/core/OperationParams$Builder;
.super Ljava/lang/Object;
.source "OperationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/funnellogger/core/OperationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mActionName:Ljava/lang/String;

.field private mActionPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

.field private mActionTag:Ljava/lang/String;

.field private mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

.field private mFunnelPayload:Lcom/facebook/funnellogger/core/PayloadBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFunnelTag:Ljava/lang/String;

.field private mInstanceId:Ljava/lang/Long;

.field private mTimestamp:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    .line 35
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mInstanceId:Ljava/lang/Long;

    .line 36
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mFunnelTag:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionTag:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 40
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mTimestamp:Ljava/lang/Long;

    .line 41
    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mFunnelPayload:Lcom/facebook/funnellogger/core/PayloadBundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Lcom/facebook/funnellogger/core/FunnelDefinition;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mInstanceId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mFunnelTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Lcom/facebook/funnellogger/core/PayloadBundle;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Lcom/facebook/funnellogger/core/PayloadBundle;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mFunnelPayload:Lcom/facebook/funnellogger/core/PayloadBundle;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/funnellogger/core/OperationParams;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/funnellogger/core/OperationParams;

    invoke-direct {v0, p0}, Lcom/facebook/funnellogger/core/OperationParams;-><init>(Lcom/facebook/funnellogger/core/OperationParams$Builder;)V

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)Lcom/facebook/funnellogger/core/OperationParams$Builder;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionName:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setActionPayloadBundle(Lcom/facebook/funnellogger/core/PayloadBundle;)Lcom/facebook/funnellogger/core/OperationParams$Builder;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 70
    return-object p0
.end method

.method public setActionTag(Ljava/lang/String;)Lcom/facebook/funnellogger/core/OperationParams$Builder;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mActionTag:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public setFunnelDefinition(Lcom/facebook/funnellogger/core/FunnelDefinition;)Lcom/facebook/funnellogger/core/OperationParams$Builder;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    .line 45
    return-object p0
.end method

.method public setInstanceId(J)Lcom/facebook/funnellogger/core/OperationParams$Builder;
    .locals 1

    .prologue
    .line 49
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mInstanceId:Ljava/lang/Long;

    .line 50
    return-object p0
.end method

.method public setTimestamp(J)Lcom/facebook/funnellogger/core/OperationParams$Builder;
    .locals 1

    .prologue
    .line 74
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams$Builder;->mTimestamp:Ljava/lang/Long;

    .line 75
    return-object p0
.end method
