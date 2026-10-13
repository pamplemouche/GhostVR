.class public Lcom/facebook/common/logging/FLog;
.super Ljava/lang/Object;
.source "FLog.java"


# static fields
.field private static sHandler:Lcom/facebook/common/logging/LoggingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->getInstance()Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLoggingDelegate(Lcom/facebook/common/logging/LoggingDelegate;)V
    .locals 1

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :cond_0
    sput-object p0, Lcom/facebook/common/logging/FLog;->sHandler:Lcom/facebook/common/logging/LoggingDelegate;

    .line 41
    return-void
.end method
