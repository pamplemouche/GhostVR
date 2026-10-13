.class public Lcom/oculus/modules/MessengerModule;
.super Ljava/lang/Object;
.source "MessengerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/MessengerModule$IncomingHandler;,
        Lcom/oculus/modules/MessengerModule$PendingAsyncCall;,
        Lcom/oculus/modules/MessengerModule$ServiceCall;,
        Lcom/oculus/modules/MessengerModule$MessageTypes;
    }
.end annotation


# static fields
.field private static final ASYNC_TIMEOUT_MS:J = 0x7530L

.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private AccessToken:Ljava/lang/String;

.field private AppId:Ljava/lang/String;

.field public RVRCtxTag:J

.field private UserId:Ljava/lang/String;

.field private callIdCounter:I

.field private hasInitedMessengerService:Ljava/lang/Boolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

.field private final mMessenger:Landroid/os/Messenger;

.field private mService:Landroid/os/Messenger;

.field private mServiceBound:Ljava/lang/Boolean;

.field private pendingServiceCalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oculus/modules/MessengerModule$PendingAsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private queuedServiceCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/modules/MessengerModule$ServiceCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/String;

    const-string v1, "MessengerModule"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/modules/MessengerModule;->MODULE_NAME:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/oculus/modules/MessengerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/MessengerModule;->queuedServiceCalls:Ljava/util/ArrayList;

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/MessengerModule;->hasInitedMessengerService:Ljava/lang/Boolean;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oculus/modules/MessengerModule;->pendingServiceCalls:Landroid/util/SparseArray;

    .line 74
    iput v1, p0, Lcom/oculus/modules/MessengerModule;->callIdCounter:I

    .line 82
    iput-object v2, p0, Lcom/oculus/modules/MessengerModule;->UserId:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/oculus/modules/MessengerModule;->AccessToken:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/oculus/modules/MessengerModule;->AppId:Ljava/lang/String;

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/MessengerModule;->mServiceBound:Ljava/lang/Boolean;

    .line 322
    new-instance v0, Lcom/oculus/modules/MessengerModule$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/oculus/modules/MessengerModule$IncomingHandler;-><init>(Lcom/oculus/modules/MessengerModule;)V

    iput-object v0, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    .line 323
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/modules/MessengerModule;->mMessenger:Landroid/os/Messenger;

    .line 325
    iput-object v2, p0, Lcom/oculus/modules/MessengerModule;->mService:Landroid/os/Messenger;

    .line 326
    new-instance v0, Lcom/oculus/modules/MessengerModule$1;

    invoke-direct {v0, p0}, Lcom/oculus/modules/MessengerModule$1;-><init>(Lcom/oculus/modules/MessengerModule;)V

    iput-object v0, p0, Lcom/oculus/modules/MessengerModule;->mConnection:Landroid/content/ServiceConnection;

    .line 470
    sget-object v0, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    const-string v1, "MessengerModule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule;->mContext:Landroid/content/Context;

    .line 472
    return-void
.end method

.method private AddPendingCall(III)V
    .locals 8
    .param p1, "callId"    # I
    .param p2, "resolveId"    # I
    .param p3, "rejectId"    # I

    .prologue
    .line 371
    new-instance v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;-><init>(Lcom/oculus/modules/MessengerModule;Lcom/oculus/modules/MessengerModule$1;)V

    .line 372
    .local v0, "asyncCall":Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    iput p2, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->resolveId:I

    .line 373
    iput p3, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->rejectId:I

    .line 374
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->timeoutToken:Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule;->pendingServiceCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    new-instance v2, Lcom/oculus/modules/MessengerModule$2;

    invoke-direct {v2, p0, p1}, Lcom/oculus/modules/MessengerModule$2;-><init>(Lcom/oculus/modules/MessengerModule;I)V

    iget-object v3, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->timeoutToken:Ljava/lang/Object;

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    .line 377
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 387
    return-void
.end method

.method private GetPendingCall(Lorg/json/JSONObject;)Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    .locals 5
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 357
    :try_start_0
    const-string v4, "callId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    .local v1, "callId":I
    iget-object v4, p0, Lcom/oculus/modules/MessengerModule;->pendingServiceCalls:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;

    .line 362
    .local v0, "call":Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    if-eqz v0, :cond_0

    .line 363
    iget-object v3, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    iget-object v4, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->timeoutToken:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 364
    iget-object v3, p0, Lcom/oculus/modules/MessengerModule;->pendingServiceCalls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 367
    .end local v0    # "call":Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    .end local v1    # "callId":I
    :goto_0
    return-object v0

    .line 358
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/json/JSONException;
    move-object v0, v3

    .line 359
    goto :goto_0

    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "call":Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    .restart local v1    # "callId":I
    :cond_0
    move-object v0, v3

    .line 367
    goto :goto_0
.end method

.method private InvokeService(ILandroid/os/Bundle;II)V
    .locals 7
    .param p1, "messageType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 391
    iget-object v6, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    new-instance v0, Lcom/oculus/modules/MessengerModule$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/modules/MessengerModule$3;-><init>(Lcom/oculus/modules/MessengerModule;ILandroid/os/Bundle;II)V

    invoke-virtual {v6, v0}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/modules/MessengerModule;Lorg/json/JSONObject;)Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/modules/MessengerModule;->GetPendingCall(Lorg/json/JSONObject;)Lcom/oculus/modules/MessengerModule$PendingAsyncCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/modules/MessengerModule;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oculus/modules/MessengerModule;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/modules/MessengerModule;->AddPendingCall(III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/modules/MessengerModule;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->queuedServiceCalls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule;->UserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule;->AccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule;->AppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oculus/modules/MessengerModule;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oculus/modules/MessengerModule;->rejectWithError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/modules/MessengerModule;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oculus/modules/MessengerModule;->invokeCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/modules/MessengerModule;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oculus/modules/MessengerModule;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oculus/modules/MessengerModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/modules/MessengerModule;->initMessengerService()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/modules/MessengerModule;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->hasInitedMessengerService:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oculus/modules/MessengerModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule;->hasInitedMessengerService:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oculus/modules/MessengerModule;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->pendingServiceCalls:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$908(Lcom/oculus/modules/MessengerModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 26
    iget v0, p0, Lcom/oculus/modules/MessengerModule;->callIdCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oculus/modules/MessengerModule;->callIdCounter:I

    return v0
.end method

.method private convertIdsJSONArrayToLongArray(Lorg/json/JSONArray;)[J
    .locals 4
    .param p1, "ids"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [J

    .line 541
    .local v1, "longIds":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 542
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    return-object v1
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "addParticipants"

    const-string v3, "+saii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v1, Landroid/util/Pair;

    const-string v2, "createThread"

    const-string v3, "+asii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v1, Landroid/util/Pair;

    const-string v2, "deleteThread"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v1, Landroid/util/Pair;

    const-string v2, "hideThread"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v1, Landroid/util/Pair;

    const-string v2, "markThreadRead"

    const-string v3, "+slii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v1, Landroid/util/Pair;

    const-string v2, "muteThread"

    const-string v3, "+siii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v1, Landroid/util/Pair;

    const-string v2, "removeParticipant"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v1, Landroid/util/Pair;

    const-string v2, "requestMessages"

    const-string v3, "+silii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v1, Landroid/util/Pair;

    const-string v2, "requestNonInboxMessages"

    const-string v3, "+siii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v1, Landroid/util/Pair;

    const-string v2, "requestNonInboxThreads"

    const-string v3, "+siiii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v1, Landroid/util/Pair;

    const-string v2, "requestThread"

    const-string v3, "+siii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v1, Landroid/util/Pair;

    const-string v2, "requestThreads"

    const-string v3, "+iilii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v1, Landroid/util/Pair;

    const-string v2, "requestUnreadThreadCounts"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v1, Landroid/util/Pair;

    const-string v2, "retrySendingMessage"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v1, Landroid/util/Pair;

    const-string v2, "sendMessage"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v1, Landroid/util/Pair;

    const-string v2, "unmuteThread"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v1, Landroid/util/Pair;

    const-string v2, "bindService"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v1, Landroid/util/Pair;

    const-string v2, "unbindService"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    return-object v0
.end method

.method private initMessengerService()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 427
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->hasInitedMessengerService:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->UserId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->AccessToken:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->AppId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->mService:Landroid/os/Messenger;

    if-nez v5, :cond_6

    .line 428
    :cond_0
    const-string v3, ""

    .line 429
    .local v3, "missingFields":Ljava/lang/String;
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->UserId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UserId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    :cond_1
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->AppId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AppId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    :cond_2
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->AccessToken:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AccessToken"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_3
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->mService:Landroid/os/Messenger;

    if-nez v5, :cond_4

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 442
    sget-object v5, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t initialise yet, missing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v3    # "missingFields":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void

    .line 446
    :cond_6
    const/4 v5, 0x0

    invoke-static {v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 447
    .local v4, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "user_id"

    iget-object v6, p0, Lcom/oculus/modules/MessengerModule;->UserId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 449
    const-string v5, "access_token"

    iget-object v6, p0, Lcom/oculus/modules/MessengerModule;->AccessToken:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v5, "app_id"

    iget-object v6, p0, Lcom/oculus/modules/MessengerModule;->AppId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 452
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->mMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 454
    :try_start_0
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->mService:Landroid/os/Messenger;

    invoke-virtual {v5, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/oculus/modules/MessengerModule;->hasInitedMessengerService:Ljava/lang/Boolean;

    .line 460
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->queuedServiceCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 461
    sget-object v5, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Flushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/modules/MessengerModule;->queuedServiceCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " calls to the Messenger Service"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->queuedServiceCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/modules/MessengerModule$ServiceCall;

    .line 463
    .local v1, "call":Lcom/oculus/modules/MessengerModule$ServiceCall;
    iget v6, v1, Lcom/oculus/modules/MessengerModule$ServiceCall;->messageType:I

    iget-object v7, v1, Lcom/oculus/modules/MessengerModule$ServiceCall;->bundle:Landroid/os/Bundle;

    iget v8, v1, Lcom/oculus/modules/MessengerModule$ServiceCall;->resolveId:I

    iget v9, v1, Lcom/oculus/modules/MessengerModule$ServiceCall;->rejectId:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    goto :goto_2

    .line 455
    .end local v1    # "call":Lcom/oculus/modules/MessengerModule$ServiceCall;
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got remote exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    iget-object v5, p0, Lcom/oculus/modules/MessengerModule;->queuedServiceCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private invokeCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callbackId"    # I
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/oculus/modules/MessengerModule;->RVRCtxTag:J

    invoke-static {v0, v1, p1, p2}, Lcom/oculus/modules/MessengerModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 421
    return-void
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method private rejectWithError(ILjava/lang/String;)V
    .locals 5
    .param p1, "rejectId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 343
    sget-object v2, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 345
    .local v1, "params":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 347
    .local v0, "error":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "message"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 351
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oculus/modules/MessengerModule;->invokeCallback(ILjava/lang/String;)V

    .line 352
    return-void

    .line 348
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public SetAccessToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 490
    sget-object v0, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    const-string v1, "SetAccessToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    new-instance v1, Lcom/oculus/modules/MessengerModule$5;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/MessengerModule$5;-><init>(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public SetAppId(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 501
    sget-object v0, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAppId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    new-instance v1, Lcom/oculus/modules/MessengerModule$6;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/MessengerModule$6;-><init>(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public SetUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 479
    sget-object v0, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUserId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule;->mHandler:Lcom/oculus/modules/MessengerModule$IncomingHandler;

    new-instance v1, Lcom/oculus/modules/MessengerModule$4;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/MessengerModule$4;-><init>(Lcom/oculus/modules/MessengerModule;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    .line 487
    return-void
.end method

.method public addParticipants(Ljava/lang/String;Lorg/json/JSONArray;II)V
    .locals 6
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "userIds"    # Lorg/json/JSONArray;
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 548
    sget-object v3, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addParticipants "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :try_start_0
    invoke-direct {p0, p2}, Lcom/oculus/modules/MessengerModule;->convertIdsJSONArrayToLongArray(Lorg/json/JSONArray;)[J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 558
    .local v2, "participantIds":[J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 559
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 560
    const-string v3, "participant_ids"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 561
    const/4 v3, 0x6

    invoke-direct {p0, v3, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 562
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "participantIds":[J
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed converting JSONArray to long[]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4, v3}, Lcom/oculus/modules/MessengerModule;->rejectWithError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public bindService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 693
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule;->mServiceBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    const-string v2, "Binding to Messenger Service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 696
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.messenger"

    const-string v3, "com.oculus.messenger.service.MessengerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/modules/MessengerModule;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 698
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/modules/MessengerModule;->mServiceBound:Ljava/lang/Boolean;

    .line 700
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public createThread(Lorg/json/JSONArray;Ljava/lang/String;II)V
    .locals 6
    .param p1, "userIds"    # Lorg/json/JSONArray;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 565
    sget-object v3, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oculus/modules/MessengerModule;->convertIdsJSONArrayToLongArray(Lorg/json/JSONArray;)[J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 575
    .local v2, "participantIds":[J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "participant_ids"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 577
    const-string v3, "message"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v3, 0x7

    invoke-direct {p0, v3, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 579
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "participantIds":[J
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed converting JSONArray to long[]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4, v3}, Lcom/oculus/modules/MessengerModule;->rejectWithError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public deleteThread(Ljava/lang/String;II)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "resolveId"    # I
    .param p3, "rejectId"    # I

    .prologue
    .line 582
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 584
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 585
    const/16 v1, 0xe

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 586
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/oculus/modules/MessengerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public hideThread(Ljava/lang/String;II)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "resolveId"    # I
    .param p3, "rejectId"    # I

    .prologue
    .line 589
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 591
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 592
    const/16 v1, 0x10

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 593
    return-void
.end method

.method public markThreadRead(Ljava/lang/String;JII)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "watermarkTimestamp"    # J
    .param p4, "resolveId"    # I
    .param p5, "rejectId"    # I

    .prologue
    .line 596
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markThreadRead "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 598
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 599
    const-string v1, "watermark_timestamp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 600
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p4, p5}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 601
    return-void
.end method

.method public muteThread(Ljava/lang/String;III)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "muteDurationInSec"    # I
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 604
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "muteThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 606
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 607
    const-string v1, "mute_for_s"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 609
    return-void
.end method

.method public removeParticipant(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 612
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeParticipant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 614
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 615
    const-string v1, "participant_id"

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 616
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 617
    return-void
.end method

.method public requestMessages(Ljava/lang/String;IJII)V
    .locals 5
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "maxMessages"    # I
    .param p3, "olderThan"    # J
    .param p5, "resolveId"    # I
    .param p6, "rejectId"    # I

    .prologue
    .line 620
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 622
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 623
    const-string v1, "max_messages"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    const-string v1, "older_than"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 625
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p5, p6}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 626
    return-void
.end method

.method public requestNonInboxMessages(Ljava/lang/String;III)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "maxMessages"    # I
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 629
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNonInboxMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 631
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 632
    const-string v1, "max_messages"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 634
    return-void
.end method

.method public requestNonInboxThreads(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "maxThreads"    # I
    .param p3, "maxMessagesPerThread"    # I
    .param p4, "resolveId"    # I
    .param p5, "rejectId"    # I

    .prologue
    .line 637
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNonInboxThreads "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 639
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "folder"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v1, "max_threads"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    const-string v1, "max_messages_per_thread"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const/16 v1, 0x11

    invoke-direct {p0, v1, v0, p4, p5}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 643
    return-void
.end method

.method public requestThread(Ljava/lang/String;III)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "maxMessages"    # I
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 646
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 649
    const-string v1, "max_messages"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    const/16 v1, 0xc

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 651
    return-void
.end method

.method public requestThreads(IIJII)V
    .locals 5
    .param p1, "maxThreads"    # I
    .param p2, "maxMessagesPerThread"    # I
    .param p3, "olderThan"    # J
    .param p5, "resolveId"    # I
    .param p6, "rejectId"    # I

    .prologue
    .line 654
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestThreads "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 656
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "max_threads"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    const-string v1, "max_messages_per_thread"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 658
    const-string v1, "older_than"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 659
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p5, p6}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 660
    return-void
.end method

.method public requestUnreadThreadCounts(II)V
    .locals 3
    .param p1, "resolveId"    # I
    .param p2, "rejectId"    # I

    .prologue
    .line 663
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    const-string v2, "requestUnreadThreadCounts"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 665
    .local v0, "bundle":Landroid/os/Bundle;
    const/16 v1, 0x13

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 666
    return-void
.end method

.method public retrySendingMessage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "offlineThreadingId"    # Ljava/lang/String;
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 669
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrySendingMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 671
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 672
    const-string v1, "offline_threading_id"

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 673
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 674
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "resolveId"    # I
    .param p4, "rejectId"    # I

    .prologue
    .line 677
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 679
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 680
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 682
    return-void
.end method

.method public shutdownModule()V
    .locals 2

    .prologue
    .line 535
    sget-object v0, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    const-string v1, "shutdownModule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p0}, Lcom/oculus/modules/MessengerModule;->unbindService()V

    .line 537
    return-void
.end method

.method public unbindService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 703
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule;->mServiceBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    const-string v2, "Unbinding from Messenger Service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/MessengerModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/modules/MessengerModule;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/modules/MessengerModule;->hasInitedMessengerService:Ljava/lang/Boolean;

    .line 711
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/modules/MessengerModule;->mServiceBound:Ljava/lang/Boolean;

    .line 713
    :cond_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmuteThread(Ljava/lang/String;II)V
    .locals 4
    .param p1, "threadId"    # Ljava/lang/String;
    .param p2, "resolveId"    # I
    .param p3, "rejectId"    # I

    .prologue
    .line 685
    sget-object v1, Lcom/oculus/modules/MessengerModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmuteThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 687
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "thread_key"

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 688
    const-string v1, "mute_for_s"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/oculus/modules/MessengerModule;->InvokeService(ILandroid/os/Bundle;II)V

    .line 690
    return-void
.end method
