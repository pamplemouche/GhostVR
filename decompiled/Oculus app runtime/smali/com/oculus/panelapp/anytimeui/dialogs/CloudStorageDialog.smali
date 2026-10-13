.class public final Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;
.source "CloudStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;,
        Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;,
        Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;,
        Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;
    }
.end annotation


# static fields
.field private static final CALLBACK_TIMEOUT_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppPackage:Ljava/lang/String;

.field private final mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

.field private final mConflictView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

.field private mDialogId:Ljava/lang/String;

.field private final mFailureView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

.field private final mHandler:Landroid/os/Handler;

.field private mRequestUri:Ljava/lang/String;

.field private final mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->TAG:Ljava/lang/String;

    const-string p2, "CloudStorageDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance p1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$1;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    .line 197
    new-instance p1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    .line 198
    new-instance p1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mFailureView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

    .line 199
    new-instance p1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mConflictView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    const/4 p1, 0x3

    .line 201
    new-array p1, p1, [Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mFailureView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mConflictView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    const/4 v0, 0x2

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->setViews([Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->actionCancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->actionLaunch()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->actionResolve(Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->handleUpdate(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V

    return-void
.end method

.method private actionCancel()V
    .locals 2

    const-string v0, "cancel"

    .line 251
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private actionConflict(JJ)V
    .locals 1

    const-string v0, "conflict"

    .line 271
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mConflictView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->swapTo(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V

    .line 273
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mConflictView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$ConflictView;->setConflictDates(JJ)V

    return-void
.end method

.method private actionFailure()V
    .locals 1

    const-string v0, "failure"

    .line 266
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mFailureView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$FailureView;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->swapTo(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V

    return-void
.end method

.method private actionLaunch()V
    .locals 2

    const-string v0, "launch"

    .line 288
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method

.method private actionResolve(Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;)V
    .locals 3

    .line 277
    invoke-virtual {p1}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->swapTo(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V

    .line 279
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->cloud_storage_dialog_text_resolving:I

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->setProgressLabel(I)V

    .line 280
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->setProgress(F)V

    .line 283
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->startTimeout()V

    .line 284
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    invoke-static {v0, v1, p1, v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->runConflictResolve(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;Lcom/oculus/cloudstoragehelper/CloudStorageCallback;)V

    return-void
.end method

.method private actionSync()V
    .locals 3

    const-string v0, "sync"

    .line 256
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->swapTo(Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;)V

    .line 258
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->cloud_storage_dialog_text_syncing:I

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->setProgressLabel(I)V

    .line 259
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->setProgress(F)V

    .line 261
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->startTimeout()V

    .line 262
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mCallback:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;

    invoke-static {v0, v1, v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper;->runLaunchSync(Landroid/content/Context;Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageCallback;)V

    return-void
.end method

.method private handleUpdate(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V
    .locals 4

    .line 227
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$1;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageResult$SyncResultType:[I

    iget-object v1, p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->resultType:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    invoke-virtual {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 245
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result type received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->resultType:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    invoke-virtual {p1}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_0
    iget-wide v0, p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictLocalTimestamp:J

    iget-wide v2, p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->conflictRemoteTimestamp:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->actionConflict(JJ)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->actionFailure()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->setProgress(F)V

    .line 234
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->actionLaunch()V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mSyncView:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;

    iget p1, p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->progress:F

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$SyncView;->setProgress(F)V

    :goto_0
    return-void
.end method

.method private logDialogAction(Ljava/lang/String;)V
    .locals 4

    .line 297
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getCurrentView()Lcom/oculus/panelapp/anytimeui/dialogs/SwappableViewDialog$SwappableView;

    move-result-object v0

    const/16 v1, 0xc

    .line 298
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "action"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "dialog_id"

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mDialogId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    const-string v2, "dialog_uri"

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mRequestUri:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "uri"

    :cond_0
    const/4 v2, 0x5

    aput-object p1, v1, v2

    const/4 p1, 0x6

    const-string v2, "dialog_view"

    aput-object v2, v1, p1

    const/4 p1, 0x7

    if-nez v0, :cond_1

    const-string v0, "none"

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, p1

    const/16 p1, 0x8

    const-string v0, "app_item_id"

    aput-object v0, v1, p1

    const/16 p1, 0x9

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "0"

    :cond_2
    aput-object v0, v1, p1

    const/16 p1, 0xa

    const-string v0, "app_package_name"

    aput-object v0, v1, p1

    const/16 p1, 0xb

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "package"

    :cond_3
    aput-object v0, v1, p1

    .line 312
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_cloud_storage_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/telemetry/Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->rawLogEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 1

    .line 206
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mDialogId:Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mRequestUri:Ljava/lang/String;

    .line 209
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "package"

    .line 211
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppPackage:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppPackage:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplicationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppId:Ljava/lang/String;

    :cond_0
    const-string p1, "configure"

    .line 216
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->mAppId:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "invalid_argument"

    .line 219
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->logDialogAction(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->actionSync()V

    :goto_0
    return-void
.end method
