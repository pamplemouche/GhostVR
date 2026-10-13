.class public Lcom/facebook/quicklog/QPLListenersList;
.super Ljava/lang/Object;
.source "QPLListenersList.java"


# instance fields
.field private final mListeners:[Lcom/facebook/quicklog/QuickEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLocklessListenersList:Lcom/facebook/quicklog/LocklessListenersList;

.field private final mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;


# direct methods
.method public constructor <init>([Lcom/facebook/quicklog/QuickEventListener;)V
    .locals 1
    .param p1    # [Lcom/facebook/quicklog/QuickEventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/facebook/quicklog/QPLListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    .line 13
    new-instance v0, Lcom/facebook/quicklog/LocklessListenersList;

    invoke-direct {v0, p1}, Lcom/facebook/quicklog/LocklessListenersList;-><init>([Lcom/facebook/quicklog/QuickEventListener;)V

    iput-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mLocklessListenersList:Lcom/facebook/quicklog/LocklessListenersList;

    .line 14
    new-instance v0, Lcom/facebook/quicklog/QuickEventListenersList;

    invoke-direct {v0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;-><init>([Lcom/facebook/quicklog/QuickEventListener;)V

    iput-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    .line 15
    return-void
.end method


# virtual methods
.method public isAnyoneInterested(I)Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mLocklessListenersList:Lcom/facebook/quicklog/LocklessListenersList;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/LocklessListenersList;->isAnyoneInterested(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    .line 23
    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;->isAnyoneInterested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/quicklog/QuickEventListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public notifyOnMarkerCancel(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;->notifyOnMarkerCancel(Lcom/facebook/quicklog/QuickEvent;)V

    .line 48
    return-void
.end method

.method public notifyOnMarkerEnd(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;->notifyOnMarkerEnd(Lcom/facebook/quicklog/QuickEvent;)V

    .line 40
    return-void
.end method

.method public notifyOnMarkerNote(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;->notifyOnMarkerNote(Lcom/facebook/quicklog/QuickEvent;)V

    .line 52
    return-void
.end method

.method public notifyOnMarkerPoint(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Lcom/facebook/quicklog/PointData;JZI)V
    .locals 8
    .param p3    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/quicklog/QuickEventListenersList;->notifyOnMarkerPoint(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Lcom/facebook/quicklog/PointData;JZI)V

    .line 63
    return-void
.end method

.method public notifyOnMarkerRestart(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;->notifyOnMarkerRestart(Lcom/facebook/quicklog/QuickEvent;)V

    .line 44
    return-void
.end method

.method public notifyOnMarkerStart(Lcom/facebook/quicklog/QuickEvent;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mQuickEventListenersList:Lcom/facebook/quicklog/QuickEventListenersList;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/QuickEventListenersList;->notifyOnMarkerStart(Lcom/facebook/quicklog/QuickEvent;)V

    .line 36
    return-void
.end method

.method public notifyQuickMarkerEnd(II)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mLocklessListenersList:Lcom/facebook/quicklog/LocklessListenersList;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/quicklog/LocklessListenersList;->notifyQuickMarkerEnd(II)V

    .line 32
    return-void
.end method

.method public notifyQuickMarkerStart(II)I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mLocklessListenersList:Lcom/facebook/quicklog/LocklessListenersList;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/quicklog/LocklessListenersList;->notifyQuickMarkerStart(II)I

    move-result v0

    return v0
.end method

.method public passQplToListeners(Lcom/facebook/quicklog/QuickPerformanceLogger;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/quicklog/QPLListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/facebook/quicklog/QPLListenersList;->mListeners:[Lcom/facebook/quicklog/QuickEventListener;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 83
    invoke-interface {v3, p1}, Lcom/facebook/quicklog/QuickEventListener;->setQuickPerformanceLogger(Lcom/facebook/quicklog/QuickPerformanceLogger;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
