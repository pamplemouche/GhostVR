.class public Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;
.super Landroid/view/View;
.source "FbReactPerfLoggerFlag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;
    }
.end annotation


# instance fields
.field private final mAfterDrawListener:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;

.field private mExtraData:Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFlagId:I

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mOnDrawHasBeenCalled:Z

.field private mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mMainThreadHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mAfterDrawListener:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->onDrawCallback()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mFlagId:I

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mExtraData:Lcom/facebook/react/bridge/ReadableMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mAfterDrawListener:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;

    return-object v0
.end method

.method private getOnDrawListener()Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$1;

    invoke-direct {v0, p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$1;-><init>(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)V

    iput-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object v0
.end method

.method private getOnPreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$2;

    invoke-direct {v0, p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$2;-><init>(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;)V

    iput-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private onDrawCallback()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2000

    const/4 v1, 0x1

    .line 115
    const-string v0, "FbReactPerfLoggerFlag.onDrawCallback"

    invoke-static {v4, v5, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnDrawHasBeenCalled:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;

    invoke-direct {v3, p0, v0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$3;-><init>(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 128
    invoke-static {v4, v5}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 129
    iput-boolean v1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnDrawHasBeenCalled:Z

    .line 130
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mOnDrawHasBeenCalled:Z

    .line 47
    invoke-virtual {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 48
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getOnDrawListener()Landroid/view/ViewTreeObserver$OnDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getOnPreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 60
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getOnDrawListener()Landroid/view/ViewTreeObserver$OnDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 66
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 68
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getOnPreDrawListener()Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method setExtraData(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mExtraData:Lcom/facebook/react/bridge/ReadableMap;

    .line 80
    return-void
.end method

.method setFlagId(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->mFlagId:I

    .line 84
    return-void
.end method

.method public setId(I)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManagerForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/facebook/react/bridge/UIManager;->profileNextBatch()V

    .line 76
    return-void
.end method
