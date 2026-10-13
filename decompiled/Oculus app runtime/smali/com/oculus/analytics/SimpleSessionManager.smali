.class public Lcom/oculus/analytics/SimpleSessionManager;
.super Lcom/facebook/analytics2/logger/SessionManager;
.source "SimpleSessionManager.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/AppBackgroundedProvider;


# static fields
.field private static sInstance:Lcom/oculus/analytics/SimpleSessionManager;


# instance fields
.field private isAppBackgrounded:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/SessionManager;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/oculus/analytics/SimpleSessionManager;->isAppBackgrounded:Z

    return-void
.end method

.method public static getInstance()Lcom/oculus/analytics/SimpleSessionManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/oculus/analytics/SimpleSessionManager;->sInstance:Lcom/oculus/analytics/SimpleSessionManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init has not been called yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init()V
    .locals 2

    .line 20
    sget-object v0, Lcom/oculus/analytics/SimpleSessionManager;->sInstance:Lcom/oculus/analytics/SimpleSessionManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/oculus/analytics/SimpleSessionManager;

    invoke-direct {v0}, Lcom/oculus/analytics/SimpleSessionManager;-><init>()V

    sput-object v0, Lcom/oculus/analytics/SimpleSessionManager;->sInstance:Lcom/oculus/analytics/SimpleSessionManager;

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init called more than once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/oculus/analytics/SimpleSessionManager;->isAppBackgrounded:Z

    return v0
.end method

.method public setAppBackgrounded(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/oculus/analytics/SimpleSessionManager;->isAppBackgrounded:Z

    return-void
.end method
