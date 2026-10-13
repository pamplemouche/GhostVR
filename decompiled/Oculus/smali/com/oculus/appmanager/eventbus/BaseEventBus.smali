.class public abstract Lcom/oculus/appmanager/eventbus/BaseEventBus;
.super Ljava/lang/Object;
.source "BaseEventBus.java"


# instance fields
.field private mNonUIBus:Lcom/squareup/otto/Bus;

.field private mUIBus:Lcom/squareup/otto/Bus;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/squareup/otto/Bus;

    invoke-direct {v0}, Lcom/squareup/otto/Bus;-><init>()V

    iput-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mUIBus:Lcom/squareup/otto/Bus;

    .line 23
    new-instance v0, Lcom/squareup/otto/Bus;

    sget-object v1, Lcom/squareup/otto/ThreadEnforcer;->ANY:Lcom/squareup/otto/ThreadEnforcer;

    invoke-direct {v0, v1}, Lcom/squareup/otto/Bus;-><init>(Lcom/squareup/otto/ThreadEnforcer;)V

    iput-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mNonUIBus:Lcom/squareup/otto/Bus;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/appmanager/eventbus/BaseEventBus;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mUIBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private postOnUIBus(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/oculus/appmanager/eventbus/BaseEventBus$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/appmanager/eventbus/BaseEventBus$1;-><init>(Lcom/oculus/appmanager/eventbus/BaseEventBus;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/oculus/util/thread/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oculus/appmanager/eventbus/BaseEventBus;->postOnUIBus(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mNonUIBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/oculus/util/thread/ThreadUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mUIBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mNonUIBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/oculus/util/thread/ThreadUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mUIBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/eventbus/BaseEventBus;->mNonUIBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    goto :goto_0
.end method
