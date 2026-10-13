.class public Lcom/facebook/rti/common/time/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/facebook/rti/common/time/Clock;


# static fields
.field private static final INSTANCE:Lcom/facebook/rti/common/time/SystemClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/facebook/rti/common/time/SystemClock;

    invoke-direct {v0}, Lcom/facebook/rti/common/time/SystemClock;-><init>()V

    sput-object v0, Lcom/facebook/rti/common/time/SystemClock;->INSTANCE:Lcom/facebook/rti/common/time/SystemClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/facebook/rti/common/time/SystemClock;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/rti/common/time/SystemClock;->INSTANCE:Lcom/facebook/rti/common/time/SystemClock;

    return-object v0
.end method


# virtual methods
.method public now()J
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
