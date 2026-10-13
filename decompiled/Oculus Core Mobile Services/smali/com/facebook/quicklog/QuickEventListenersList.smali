.class public Lcom/facebook/quicklog/QuickEventListenersList;
.super Lcom/facebook/quicklog/BaseListenersList;
.source "QuickEventListenersList.java"


# direct methods
.method public constructor <init>([Lcom/facebook/quicklog/QuickEventListener;)V
    .locals 0
    .param p1    # [Lcom/facebook/quicklog/QuickEventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/BaseListenersList;-><init>([Lcom/facebook/quicklog/QuickEventListener;)V

    .line 18
    return-void
.end method

.method private notify(Lcom/facebook/quicklog/QuickEvent;I)V
    .locals 7

    .prologue
    .line 62
    iget v0, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    invoke-virtual {p0, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->getListenersMaskForMarker(I)I

    move-result v2

    .line 63
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    return-void

    .line 66
    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 67
    and-int v3, v2, v0

    if-gtz v3, :cond_2

    .line 66
    :goto_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_2
    :try_start_0
    const-string v3, "QuickEventListenersList::notify [%s %d %d]"

    iget-object v4, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v4, v4, v1

    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 72
    invoke-static {v3, v4, v5, v6}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1, v1}, Lcom/facebook/quicklog/QuickEvent;->setQuickStartListenerStatusIndex(I)V

    .line 76
    packed-switch p2, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown listenerMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0

    .line 78
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/facebook/quicklog/QuickEventListener;->onMarkerStart(Lcom/facebook/quicklog/QuickEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_2
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    goto :goto_1

    .line 81
    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/facebook/quicklog/QuickEventListener;->onMarkerStop(Lcom/facebook/quicklog/QuickEvent;)V

    goto :goto_2

    .line 84
    :pswitch_2
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/facebook/quicklog/QuickEventListener;->onMarkerRestart(Lcom/facebook/quicklog/QuickEvent;)V

    goto :goto_2

    .line 87
    :pswitch_3
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/facebook/quicklog/QuickEventListener;->onMarkerNote(Lcom/facebook/quicklog/QuickEvent;)V

    goto :goto_2

    .line 90
    :pswitch_4
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/facebook/quicklog/QuickEventListener;->onMarkerCancel(Lcom/facebook/quicklog/QuickEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getListenerMarkers(Lcom/facebook/quicklog/QuickEventListener;)[I
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    invoke-interface {p1}, Lcom/facebook/quicklog/QuickEventListener;->getListenerMarkers()Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/facebook/quicklog/QuickEventListener$ListenerMarkers;->normalMarkersList:[I

    goto :goto_0
.end method

.method public isAnyoneInterested(I)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;->getListenersMaskForMarker(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 157
    iget v0, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    invoke-virtual {p0, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->getListenersMaskForMarker(I)I

    move-result v2

    .line 158
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v0, "QuickEventListenersList::notifyOnMarkerAnnotate [%d]"

    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 165
    and-int v3, v2, v0

    if-lez v3, :cond_2

    .line 166
    const-string v3, "%s::onMarkerAnnotate"

    iget-object v4, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/facebook/quicklog/QuickEvent;->setQuickStartListenerStatusIndex(I)V

    .line 169
    iget-object v3, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2, p3}, Lcom/facebook/quicklog/QuickEventListener;->onMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    .line 164
    :cond_2
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0

    :cond_3
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    goto :goto_0
.end method

.method public notifyOnMarkerCancel(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->notify(Lcom/facebook/quicklog/QuickEvent;I)V

    .line 55
    return-void
.end method

.method public notifyOnMarkerEnd(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->notify(Lcom/facebook/quicklog/QuickEvent;I)V

    .line 43
    return-void
.end method

.method public notifyOnMarkerNote(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->notify(Lcom/facebook/quicklog/QuickEvent;I)V

    .line 59
    return-void
.end method

.method public notifyOnMarkerPoint(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Lcom/facebook/quicklog/PointData;JZI)V
    .locals 12
    .param p3    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    iget v0, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    invoke-virtual {p0, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->getListenersMaskForMarker(I)I

    move-result v10

    .line 109
    if-eqz v10, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "QuickEventListenersList::notifyOnMarkerPoint [%d]"

    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const/4 v1, 0x0

    const/4 v0, 0x1

    move v8, v0

    move v9, v1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    .line 115
    and-int v0, v10, v8

    if-gtz v0, :cond_2

    .line 114
    :goto_2
    add-int/lit8 v1, v9, 0x1

    shl-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    goto :goto_1

    .line 118
    :cond_2
    const-string v0, "%s::onMarkerPoint"

    iget-object v1, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/debug/tracer/Tracer;->startTracer(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    invoke-virtual {p1, v9}, Lcom/facebook/quicklog/QuickEvent;->setQuickStartListenerStatusIndex(I)V

    .line 121
    iget-object v0, p0, Lcom/facebook/quicklog/QuickEventListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    aget-object v0, v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/facebook/quicklog/QuickEventListener;->onMarkerPoint(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Lcom/facebook/quicklog/PointData;JZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :try_start_2
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0

    .line 124
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :cond_3
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->stopTracer()V

    goto :goto_0
.end method

.method public notifyOnMarkerRestart(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->notify(Lcom/facebook/quicklog/QuickEvent;I)V

    .line 51
    return-void
.end method

.method public notifyOnMarkerStart(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/quicklog/QuickEventListenersList;->notify(Lcom/facebook/quicklog/QuickEvent;I)V

    .line 39
    return-void
.end method
