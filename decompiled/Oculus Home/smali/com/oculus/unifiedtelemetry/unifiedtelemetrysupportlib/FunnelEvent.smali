.class public Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
.super Ljava/lang/Object;
.source "FunnelEvent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x16
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_FUNNEL_TIMEOUT:J


# instance fields
.field private final mActionData:Landroid/os/PersistableBundle;

.field private mActionName:Ljava/lang/String;

.field private final mFunnelName:Ljava/lang/String;

.field private final mInstanceId:J

.field private mSecondsToEndSinceLastUpdate:I

.field private mTag:Ljava/lang/String;

.field private final mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->DEFAULT_FUNNEL_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J
    .param p4, "type"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mFunnelName:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mInstanceId:J

    .line 35
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->values()[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    move-result-object v0

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    .line 36
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->ACTION:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    .line 37
    sget-wide v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->DEFAULT_FUNNEL_TIMEOUT:J

    long-to-int v0, v0

    iput v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mSecondsToEndSinceLastUpdate:I

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getActionData()Landroid/os/PersistableBundle;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getFunnelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mFunnelName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mInstanceId:J

    return-wide v0
.end method

.method public getSecondsToEndSinceLastUpdate()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mSecondsToEndSinceLastUpdate:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method public setActionData(Ljava/lang/String;D)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 91
    :cond_0
    return-object p0
.end method

.method public setActionData(Ljava/lang/String;I)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    :cond_0
    return-object p0
.end method

.method public setActionData(Ljava/lang/String;J)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 105
    :cond_0
    return-object p0
.end method

.method public setActionData(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-object p0
.end method

.method public setActionData(Ljava/lang/String;Z)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionData:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    :cond_0
    return-object p0
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mActionName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSecondsToEndSinceLastUpdate(I)V
    .locals 0
    .param p1, "secondsToEndSinceLastUpdate"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mSecondsToEndSinceLastUpdate:I

    .line 70
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelEvent;->mTag:Ljava/lang/String;

    .line 74
    return-void
.end method
