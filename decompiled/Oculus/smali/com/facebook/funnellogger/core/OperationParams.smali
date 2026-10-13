.class Lcom/facebook/funnellogger/core/OperationParams;
.super Ljava/lang/Object;
.source "OperationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/funnellogger/core/OperationParams$Builder;
    }
.end annotation


# instance fields
.field final mActionName:Ljava/lang/String;

.field final mActionPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

.field final mActionTag:Ljava/lang/String;

.field final mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

.field final mFunnelPayload:Lcom/facebook/funnellogger/core/PayloadBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mFunnelTag:Ljava/lang/String;

.field final mInstanceId:Ljava/lang/Long;

.field final mTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/facebook/funnellogger/core/OperationParams$Builder;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$000(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    .line 24
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$100(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mInstanceId:Ljava/lang/Long;

    .line 25
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$200(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelTag:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$300(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mActionName:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$400(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mActionTag:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$500(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Lcom/facebook/funnellogger/core/PayloadBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mActionPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 29
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$600(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mTimestamp:Ljava/lang/Long;

    .line 30
    invoke-static {p1}, Lcom/facebook/funnellogger/core/OperationParams$Builder;->access$700(Lcom/facebook/funnellogger/core/OperationParams$Builder;)Lcom/facebook/funnellogger/core/PayloadBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelPayload:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 31
    return-void
.end method

.method static aquireBuilder()Lcom/facebook/funnellogger/core/OperationParams$Builder;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/funnellogger/core/OperationParams$Builder;

    invoke-direct {v0}, Lcom/facebook/funnellogger/core/OperationParams$Builder;-><init>()V

    return-object v0
.end method
