.class public Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;
.super Ljava/lang/Object;
.source "AnytimeSharedStateV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;,
        Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;
    }
.end annotation


# instance fields
.field private mBrightness:I

.field private mLiveStreamAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

.field private mLiveStreamCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

.field private mLocalCastCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVideoCaptureAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

.field private mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mObservers:Ljava/util/List;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mBrightness:I

    .line 25
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    .line 26
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    .line 27
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    .line 28
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    .line 29
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLocalCastCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mBrightness:I

    return p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLocalCastCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    return-object p0
.end method

.method private iterateObservers(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 152
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {p1, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;->onStateChanged(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mObservers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBrightness()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mBrightness:I

    return v0
.end method

.method public getLiveStreamAllowed()Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    return-object v0
.end method

.method public getLiveStreamCaptureState()Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    return-object v0
.end method

.method public getLocalCastCaptureState()Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLocalCastCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    return-object v0
.end method

.method public getVideoCaptureAllowed()Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    return-object v0
.end method

.method public getVideoCaptureState()Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    return-object v0
.end method

.method public removeObserver(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mObservers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBrightness(I)V
    .locals 1

    .line 54
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mBrightness:I

    if-eq v0, p1, :cond_0

    .line 55
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mBrightness:I

    .line 56
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$1;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->iterateObservers(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public setLiveStreamState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    if-eq v0, p2, :cond_1

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    .line 111
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLiveStreamAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    .line 112
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$4;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$4;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->iterateObservers(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;)V

    :cond_1
    return-void
.end method

.method public setLocalCastState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLocalCastCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    if-eq v0, p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mLocalCastCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    .line 133
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$5;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$5;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->iterateObservers(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public setVideoCaptureState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    if-eq v0, p1, :cond_0

    .line 93
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    .line 94
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$3;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$3;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->iterateObservers(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;)V

    :cond_0
    return-void
.end method

.method public setVideoCaptureState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    if-eq v0, p1, :cond_1

    .line 69
    :cond_0
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureAllowedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    .line 70
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->mVideoCaptureState:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    .line 71
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$2;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$2;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->iterateObservers(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$StateChangeCallback;)V

    :cond_1
    return-void
.end method
