.class public Lcom/facebook/quicklog/LocklessListenersList;
.super Lcom/facebook/quicklog/BaseListenersList;
.source "LocklessListenersList.java"


# direct methods
.method public constructor <init>([Lcom/facebook/quicklog/QuickEventListener;)V
    .locals 0
    .param p1    # [Lcom/facebook/quicklog/QuickEventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/BaseListenersList;-><init>([Lcom/facebook/quicklog/QuickEventListener;)V

    .line 13
    return-void
.end method

.method private notify(III)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/LocklessListenersList;->getListenersMaskForMarker(I)I

    move-result v3

    .line 46
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/LocklessListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    if-nez v0, :cond_2

    :cond_0
    move v2, v1

    .line 66
    :cond_1
    return v2

    .line 50
    :cond_2
    const/4 v0, 0x1

    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/facebook/quicklog/LocklessListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 51
    and-int v4, v3, v0

    if-lez v4, :cond_3

    .line 52
    packed-switch p3, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown listenerMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :pswitch_0
    iget-object v4, p0, Lcom/facebook/quicklog/LocklessListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v4, v4, v1

    invoke-interface {v4, p1, p2}, Lcom/facebook/quicklog/QuickEventListener;->onQuickMarkerStart(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    or-int/2addr v2, v0

    .line 50
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v4, p0, Lcom/facebook/quicklog/LocklessListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v4, v4, v1

    invoke-interface {v4, p1, p2}, Lcom/facebook/quicklog/QuickEventListener;->onQuickMarkerEnd(II)V

    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getListenerMarkers(Lcom/facebook/quicklog/QuickEventListener;)[I
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/facebook/quicklog/QuickEventListener;->getListenerMarkers()Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->quickMarkersList:[I

    goto :goto_0
.end method

.method public isAnyoneInterested(I)Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/LocklessListenersList;->getListenersMaskForMarker(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyQuickMarkerEnd(II)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/quicklog/LocklessListenersList;->notify(III)I

    .line 42
    return-void
.end method

.method public notifyQuickMarkerStart(II)I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/quicklog/LocklessListenersList;->notify(III)I

    move-result v0

    return v0
.end method
