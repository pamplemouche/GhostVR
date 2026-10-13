.class Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;
.super Ljava/lang/Object;
.source "ForegroundAppChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/ForegroundAppChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopWindowManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager$TopWindowObserver;
    }
.end annotation


# instance fields
.field private mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/horizon/service_media/ForegroundAppChecker;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/service_media/ForegroundAppChecker;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->this$0:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/service_media/ForegroundAppChecker;Lcom/oculus/horizon/service_media/ForegroundAppChecker$1;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;-><init>(Lcom/oculus/horizon/service_media/ForegroundAppChecker;)V

    return-void
.end method


# virtual methods
.method public setupObserver()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/oculus/os/ActivityManagerUtils;

    invoke-direct {v0}, Lcom/oculus/os/ActivityManagerUtils;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    new-instance v1, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager$TopWindowObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager$TopWindowObserver;-><init>(Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;Lcom/oculus/horizon/service_media/ForegroundAppChecker$1;)V

    new-instance v2, Landroid/os/Handler;

    .line 124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/oculus/os/ActivityManagerUtils;->setWindowLayoutObserver(Lcom/oculus/os/ActivityManagerUtils$WindowLayoutObserver;Landroid/os/Handler;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public teardownObserver()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    invoke-virtual {v0}, Lcom/oculus/os/ActivityManagerUtils;->clearWindowLayoutObserver()Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->mActivityManagerUtils:Lcom/oculus/os/ActivityManagerUtils;

    .line 133
    :cond_0
    return-void
.end method
