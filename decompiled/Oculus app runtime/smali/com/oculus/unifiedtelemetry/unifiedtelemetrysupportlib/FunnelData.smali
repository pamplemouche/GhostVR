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
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 23
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 25
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    return-void
.end method

.method constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;Ljava/lang/String;J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 32
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 55
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    .line 56
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 57
    iput-object p4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    .line 41
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 43
    iput-object p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    return-void
.end method
