.class public Lcom/oculus/horizon/payments/CheckoutFlowModel;
.super Ljava/lang/Object;
.source "CheckoutFlowModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;,
        Lcom/oculus/horizon/payments/CheckoutFlowModel$State;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oculus/horizon/payments/CheckoutFlowModel;


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mOnStateChangedListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

.field private mPackageName:Ljava/lang/String;

.field private mState:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    iput-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mState:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorCode:I

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/oculus/horizon/payments/CheckoutFlowModel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->sInstance:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;

    invoke-direct {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;-><init>()V

    sput-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->sInstance:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 40
    :cond_0
    sget-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->sInstance:Lcom/oculus/horizon/payments/CheckoutFlowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onStateChanged()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mOnStateChangedListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mOnStateChangedListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    invoke-interface {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;->onStateChanged()V

    .line 106
    :cond_0
    return-void
.end method

.method public static resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    iput-object v1, v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mState:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 46
    iput-object v2, v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mItemId:Ljava/lang/String;

    .line 47
    iput-object v2, v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mPackageName:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput v1, v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorCode:I

    .line 49
    const-string v1, ""

    iput-object v1, v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorTitle:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorMsg:Ljava/lang/String;

    .line 51
    iput-object p0, v0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mOnStateChangedListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    .line 52
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getErrorCode()I
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorMsg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getErrorTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mItemId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mState:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    iput-object v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mState:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorCode:I

    .line 98
    invoke-direct {p0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mState:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 61
    iput-object p2, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mItemId:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateWithError(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mState:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 69
    iput p2, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorCode:I

    .line 70
    iput-object p3, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorTitle:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/oculus/horizon/payments/CheckoutFlowModel;->mErrorMsg:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
