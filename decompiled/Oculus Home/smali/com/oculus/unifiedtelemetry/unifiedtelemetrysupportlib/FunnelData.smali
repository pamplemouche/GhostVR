.class Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;
.super Ljava/lang/Object;
.source "FunnelData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;
    }
.end annotation


# instance fields
.field final mActionData:Landroid/os/PersistableBundle;

.field final mActionName:Ljava/lang/String;

.field final mFunnelName:Ljava/lang/String;

.field final mInstanceId:Ljava/lang/Long;

.field final mTag:Ljava/lang/String;

.field final mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;


# direct methods
.method constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;
    .param p2, "funnelName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 23
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 25
    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V
    .locals 3
    .param p1, "type"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;
    .param p2, "funnelName"    # Ljava/lang/String;
    .param p3, "instanceId"    # J

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 32
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 34
    iput-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J
    .param p4, "actionName"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 55
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    .line 56
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 57
    iput-object p4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 41
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 43
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    .line 46
    return-void
.end method
