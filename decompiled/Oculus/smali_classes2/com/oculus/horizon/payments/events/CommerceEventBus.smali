.class public Lcom/oculus/horizon/payments/events/CommerceEventBus;
.super Lcom/squareup/otto/Bus;
.source "CommerceEventBus.java"


# static fields
.field private static sInstance:Lcom/oculus/horizon/payments/events/CommerceEventBus;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/squareup/otto/Bus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oculus/horizon/payments/events/CommerceEventBus;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/oculus/horizon/payments/events/CommerceEventBus;->sInstance:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/oculus/horizon/payments/events/CommerceEventBus;

    invoke-direct {v0}, Lcom/oculus/horizon/payments/events/CommerceEventBus;-><init>()V

    sput-object v0, Lcom/oculus/horizon/payments/events/CommerceEventBus;->sInstance:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    .line 17
    :cond_0
    sget-object v0, Lcom/oculus/horizon/payments/events/CommerceEventBus;->sInstance:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    return-object v0
.end method
