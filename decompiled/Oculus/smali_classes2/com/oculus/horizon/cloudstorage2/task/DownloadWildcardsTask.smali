.class public Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;
.super Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;
.source "DownloadWildcardsTask.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/task/AsyncWork",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final WILDCARDS_DEFAULT_ALL:[Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private final mAppGroupingId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/**/*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->WILDCARDS_DEFAULT_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p3}, Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 30
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 34
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->mAppGroupingId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->WILDCARDS_DEFAULT_ALL:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Lbolts/TaskCompletionSource;

    invoke-direct {v1}, Lbolts/TaskCompletionSource;-><init>()V

    .line 41
    const/4 v0, 0x0

    sget v2, Lcom/oculus/horizon/api/ApiModule$UL_id;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v2, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsRequest;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->mAppGroupingId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsRequest;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;

    invoke-direct {v3, p0, v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;-><init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v0, v2, v3}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 67
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
