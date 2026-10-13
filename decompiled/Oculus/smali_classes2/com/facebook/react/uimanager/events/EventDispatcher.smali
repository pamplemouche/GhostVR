.class public Lcom/facebook/react/uimanager/events/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/events/EventDispatcher$DispatchEventsRunnable;,
        Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;
    }
.end annotation


# static fields
.field private static final EVENT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/react/uimanager/events/Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;

.field private final mDispatchEventsRunnable:Lcom/facebook/react/uimanager/events/EventDispatcher$DispatchEventsRunnable;

.field private final mEventCookieToLastEventIdx:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventNameToEventId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventStaging:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/react/uimanager/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventsStagingLock:Ljava/lang/Object;

.field private mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

.field private final mEventsToDispatchLock:Ljava/lang/Object;

.field private mEventsToDispatchSize:I

.field private volatile mHasDispatchScheduled:Z

.field private final mHasDispatchScheduledCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/react/uimanager/events/EventDispatcherListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextEventTypeId:S

.field private final mPostEventDispatchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private volatile mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcher$1;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher$1;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/events/EventDispatcher;->EVENT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsStagingLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventCookieToLastEventIdx:Landroid/util/LongSparseArray;

    .line 87
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventNameToEventId:Ljava/util/Map;

    .line 88
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcher$DispatchEventsRunnable;

    invoke-direct {v0, p0, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher$DispatchEventsRunnable;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/events/EventDispatcher$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mDispatchEventsRunnable:Lcom/facebook/react/uimanager/events/EventDispatcher$DispatchEventsRunnable;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventStaging:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mPostEventDispatchListeners:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;

    invoke-direct {v0, p0, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/uimanager/events/EventDispatcher$1;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mHasDispatchScheduledCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/facebook/react/uimanager/events/Event;

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    .line 97
    iput v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    .line 99
    iput-short v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mNextEventTypeId:S

    .line 100
    iput-boolean v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mHasDispatchScheduled:Z

    .line 103
    iput-object p1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 104
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 105
    new-instance v0, Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    .line 106
    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/react/uimanager/events/EventDispatcher;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/react/uimanager/events/EventDispatcher;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/facebook/react/uimanager/events/EventDispatcher;)[Lcom/facebook/react/uimanager/events/Event;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/react/uimanager/events/EventDispatcher;->EVENT_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->clearEventsToDispatch()V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/react/uimanager/events/EventDispatcher;)Landroid/util/LongSparseArray;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventCookieToLastEventIdx:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/react/uimanager/events/EventDispatcher;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mPostEventDispatchListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->stopFrameCallback()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->moveStagedEventsToDispatchQueue()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/uimanager/events/EventDispatcher;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mHasDispatchScheduled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/facebook/react/uimanager/events/EventDispatcher;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mHasDispatchScheduled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/facebook/react/uimanager/events/EventDispatcher;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mHasDispatchScheduledCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/react/uimanager/events/EventDispatcher;)Lcom/facebook/react/uimanager/events/EventDispatcher$DispatchEventsRunnable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mDispatchEventsRunnable:Lcom/facebook/react/uimanager/events/EventDispatcher$DispatchEventsRunnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/react/uimanager/events/EventDispatcher;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/react/uimanager/events/EventDispatcher;)Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/react/uimanager/events/EventDispatcher;)Lcom/facebook/react/uimanager/events/ReactEventEmitter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    return-object v0
.end method

.method private addEventToEventsToDispatch(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 3

    .prologue
    .line 378
    iget v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/uimanager/events/Event;

    iput-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    iget v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    aput-object p1, v0, v1

    .line 382
    return-void
.end method

.method private clearEventsToDispatch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    iget v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 386
    iput v3, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    .line 387
    return-void
.end method

.method private getEventCookie(ILjava/lang/String;S)J
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventNameToEventId:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 250
    :goto_0
    invoke-static {p1, v0, p3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->getEventCookie(ISS)J

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_0
    iget-short v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mNextEventTypeId:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mNextEventTypeId:S

    .line 248
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventNameToEventId:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getEventCookie(ISS)J
    .locals 8

    .prologue
    const-wide/32 v6, 0xffff

    .line 254
    int-to-long v0, p0

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private maybePostFrameCallbackFromNonUI()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;->maybePostFromNonUI()V

    .line 139
    :cond_0
    return-void
.end method

.method private moveStagedEventsToDispatchQueue()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v6, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsStagingLock:Ljava/lang/Object;

    monitor-enter v6

    .line 197
    :try_start_0
    iget-object v7, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventStaging:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventStaging:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    .line 201
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/Event;->canCoalesce()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addEventToEventsToDispatch(Lcom/facebook/react/uimanager/events/Event;)V

    .line 198
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v1

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/Event;->getCoalescingKey()S

    move-result v4

    invoke-direct {p0, v1, v3, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->getEventCookie(ILjava/lang/String;S)J

    move-result-wide v8

    .line 211
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventCookieToLastEventIdx:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 213
    if-nez v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventCookieToLastEventIdx:Landroid/util/LongSparseArray;

    iget v3, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v1, v0

    move-object v0, v2

    .line 229
    :goto_2
    if-eqz v1, :cond_2

    .line 230
    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addEventToEventsToDispatch(Lcom/facebook/react/uimanager/events/Event;)V

    .line 232
    :cond_2
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/Event;->dispose()V

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 238
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 217
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 218
    invoke-virtual {v0, v3}, Lcom/facebook/react/uimanager/events/Event;->coalesce(Lcom/facebook/react/uimanager/events/Event;)Lcom/facebook/react/uimanager/events/Event;

    move-result-object v4

    .line 219
    if-eq v4, v3, :cond_4

    .line 221
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventCookieToLastEventIdx:Landroid/util/LongSparseArray;

    iget v10, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatchSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsToDispatch:[Lcom/facebook/react/uimanager/events/Event;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, 0x0

    aput-object v8, v0, v1

    move-object v0, v3

    move-object v1, v4

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 225
    goto :goto_2

    .line 236
    :cond_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :try_start_4
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventStaging:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    return-void
.end method

.method private stopFrameCallback()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 186
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mCurrentFrameCallback:Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher$ScheduleDispatchFrameCallback;->stop()V

    .line 187
    return-void
.end method


# virtual methods
.method public addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->isInitialized()Z

    move-result v0

    const-string v1, "Dispatched event hasn\'t been initialized"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/EventDispatcherListener;

    .line 113
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcherListener;->onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventsStagingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mEventStaging:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-wide/16 v2, 0x2000

    .line 119
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getUniqueID()I

    move-result v4

    .line 118
    invoke-static {v2, v3, v0, v4}, Lcom/facebook/systrace/Systrace;->startAsyncFlow(JLjava/lang/String;I)V

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->maybePostFrameCallbackFromNonUI()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCatalystInstanceDestroyed()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/facebook/react/uimanager/events/EventDispatcher$2;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/events/EventDispatcher$2;-><init>(Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->stopFrameCallback()V

    .line 172
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->stopFrameCallback()V

    .line 167
    return-void
.end method

.method public onHostResume()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->maybePostFrameCallbackFromNonUI()V

    .line 162
    return-void
.end method

.method public registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/react/uimanager/events/EventDispatcher;->mReactEventEmitter:Lcom/facebook/react/uimanager/events/ReactEventEmitter;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/events/ReactEventEmitter;->register(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 261
    return-void
.end method
