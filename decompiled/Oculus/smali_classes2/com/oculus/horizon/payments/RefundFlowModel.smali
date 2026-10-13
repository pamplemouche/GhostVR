.class public Lcom/oculus/horizon/payments/RefundFlowModel;
.super Ljava/lang/Object;
.source "RefundFlowModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;,
        Lcom/oculus/horizon/payments/RefundFlowModel$State;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oculus/horizon/payments/RefundFlowModel;


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mOnStateChangedListener:Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;

.field private mState:Lcom/oculus/horizon/payments/RefundFlowModel$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;->RESET:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    iput-object v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mState:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorCode:I

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oculus/horizon/payments/RefundFlowModel;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/oculus/horizon/payments/RefundFlowModel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/payments/RefundFlowModel;->sInstance:Lcom/oculus/horizon/payments/RefundFlowModel;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-direct {v0}, Lcom/oculus/horizon/payments/RefundFlowModel;-><init>()V

    sput-object v0, Lcom/oculus/horizon/payments/RefundFlowModel;->sInstance:Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 37
    :cond_0
    sget-object v0, Lcom/oculus/horizon/payments/RefundFlowModel;->sInstance:Lcom/oculus/horizon/payments/RefundFlowModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onStateChanged()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mOnStateChangedListener:Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mOnStateChangedListener:Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;

    invoke-interface {v0}, Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;->onStateChanged()V

    .line 97
    :cond_0
    return-void
.end method

.method public static resetInstance(Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/RefundFlowModel;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/oculus/horizon/payments/RefundFlowModel;->getInstance()Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->RESET:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    iput-object v1, v0, Lcom/oculus/horizon/payments/RefundFlowModel;->mState:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 43
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oculus/horizon/payments/RefundFlowModel;->mItemId:Ljava/lang/String;

    .line 44
    const/4 v1, 0x0

    iput v1, v0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorCode:I

    .line 45
    const-string v1, ""

    iput-object v1, v0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorTitle:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, v0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorMsg:Ljava/lang/String;

    .line 47
    iput-object p0, v0, Lcom/oculus/horizon/payments/RefundFlowModel;->mOnStateChangedListener:Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;

    .line 48
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getErrorCode()I
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorCode:I
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
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorMsg:Ljava/lang/String;
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
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorTitle:Ljava/lang/String;
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
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mItemId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/oculus/horizon/payments/RefundFlowModel$State;
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mState:Lcom/oculus/horizon/payments/RefundFlowModel$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/oculus/horizon/payments/RefundFlowModel$State;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mState:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 57
    iput-object p2, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mItemId:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/oculus/horizon/payments/RefundFlowModel;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateWithError(Lcom/oculus/horizon/payments/RefundFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mState:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 64
    iput p2, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorCode:I

    .line 65
    iput-object p3, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorTitle:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/oculus/horizon/payments/RefundFlowModel;->mErrorMsg:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/oculus/horizon/payments/RefundFlowModel;->onStateChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
