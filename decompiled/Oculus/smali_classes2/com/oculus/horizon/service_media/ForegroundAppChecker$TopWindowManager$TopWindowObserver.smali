.class Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager$TopWindowObserver;
.super Ljava/lang/Object;
.source "ForegroundAppChecker.java"

# interfaces
.implements Lcom/oculus/os/ActivityManagerUtils$WindowLayoutObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopWindowObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager$TopWindowObserver;->this$1:Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;Lcom/oculus/horizon/service_media/ForegroundAppChecker$1;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager$TopWindowObserver;-><init>(Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;)V

    return-void
.end method


# virtual methods
.method public onFocusedWindowChanged(Landroid/os/IBinder;I)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager$TopWindowObserver;->this$1:Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;

    iget-object v0, v0, Lcom/oculus/horizon/service_media/ForegroundAppChecker$TopWindowManager;->this$0:Lcom/oculus/horizon/service_media/ForegroundAppChecker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->access$100(Lcom/oculus/horizon/service_media/ForegroundAppChecker;Ljava/lang/Integer;)V

    .line 116
    invoke-static {}, Lcom/oculus/horizon/service_media/ForegroundAppChecker;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFocusedWindowChanged: topWindowUid= %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void
.end method
