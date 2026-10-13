.class public Lcom/facebook/react/views/slider/ReactSliderEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ReactSliderEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event",
        "<",
        "Lcom/facebook/react/views/slider/ReactSliderEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFromUser:Z

.field private final mValue:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 24
    iput-wide p2, p0, Lcom/facebook/react/views/slider/ReactSliderEvent;->mValue:D

    .line 25
    iput-boolean p4, p0, Lcom/facebook/react/views/slider/ReactSliderEvent;->mFromUser:Z

    .line 26
    return-void
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 53
    const-string v1, "target"

    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderEvent;->getViewTag()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v1, "value"

    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderEvent;->getValue()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 55
    const-string v1, "fromUser"

    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderEvent;->isFromUser()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/slider/ReactSliderEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/react/views/slider/ReactSliderEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 49
    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "topChange"

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/facebook/react/views/slider/ReactSliderEvent;->mValue:D

    return-wide v0
.end method

.method public isFromUser()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/facebook/react/views/slider/ReactSliderEvent;->mFromUser:Z

    return v0
.end method
