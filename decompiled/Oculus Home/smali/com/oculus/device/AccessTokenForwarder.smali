.class public Lcom/oculus/device/AccessTokenForwarder;
.super Ljava/lang/Object;
.source "AccessTokenForwarder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/device/AccessTokenForwarder$IListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/oculus/device/AccessTokenForwarder;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/device/AccessTokenForwarder$IListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/device/AccessTokenForwarder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/device/AccessTokenForwarder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessTokenLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    sget-object v0, Lcom/oculus/device/AccessTokenForwarder;->TAG:Ljava/lang/String;

    const-string v1, "Constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/device/AccessTokenForwarder;->mListeners:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/oculus/device/AccessTokenForwarder;->instance:Lcom/oculus/device/AccessTokenForwarder;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/oculus/device/AccessTokenForwarder;->TAG:Ljava/lang/String;

    const-string v1, "Singleton already initialized when constructed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    sput-object p0, Lcom/oculus/device/AccessTokenForwarder;->instance:Lcom/oculus/device/AccessTokenForwarder;

    goto :goto_0
.end method

.method public static getInstance()Lcom/oculus/device/AccessTokenForwarder;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/device/AccessTokenForwarder;->instance:Lcom/oculus/device/AccessTokenForwarder;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/oculus/device/AccessTokenForwarder;->TAG:Ljava/lang/String;

    const-string v1, "Singleton was not initialized before being accessed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    sget-object v0, Lcom/oculus/device/AccessTokenForwarder;->instance:Lcom/oculus/device/AccessTokenForwarder;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/oculus/device/AccessTokenForwarder$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oculus/device/AccessTokenForwarder$IListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessTokenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 58
    iget-object v0, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/oculus/device/AccessTokenForwarder;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessTokenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessToken:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oculus/device/AccessTokenForwarder$IListener;->onGetAccessToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetAccessToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessTokenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 44
    sget-object v1, Lcom/oculus/device/AccessTokenForwarder;->TAG:Ljava/lang/String;

    const-string v2, "Get access token"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessToken:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/oculus/device/AccessTokenForwarder;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/oculus/device/AccessTokenForwarder;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/device/AccessTokenForwarder$IListener;

    iget-object v2, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessToken:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/oculus/device/AccessTokenForwarder$IListener;->onGetAccessToken(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/oculus/device/AccessTokenForwarder;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/oculus/device/AccessTokenForwarder;->mAccessTokenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    return-void
.end method
