.class public Lcom/facebook/debug/log/DefaultLoggingDelegate;
.super Lcom/facebook/debug/log/AbstractLoggingDelegate;
.source "DefaultLoggingDelegate.java"


# static fields
.field public static final sInstance:Lcom/facebook/debug/log/DefaultLoggingDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/facebook/debug/log/DefaultLoggingDelegate;

    invoke-direct {v0}, Lcom/facebook/debug/log/DefaultLoggingDelegate;-><init>()V

    sput-object v0, Lcom/facebook/debug/log/DefaultLoggingDelegate;->sInstance:Lcom/facebook/debug/log/DefaultLoggingDelegate;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/debug/log/AbstractLoggingDelegate;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/common/logging/LoggingDelegate;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/debug/log/DefaultLoggingDelegate;->sInstance:Lcom/facebook/debug/log/DefaultLoggingDelegate;

    return-object v0
.end method


# virtual methods
.method public wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    return-void
.end method
