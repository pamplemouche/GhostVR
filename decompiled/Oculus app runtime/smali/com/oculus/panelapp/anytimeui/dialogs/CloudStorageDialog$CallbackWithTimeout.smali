.class Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;
.super Ljava/lang/Object;
.source "CloudStorageDialog.java"

# interfaces
.implements Lcom/oculus/cloudstoragehelper/CloudStorageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWithTimeout"
.end annotation


# instance fields
.field private mTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;)Ljava/lang/Runnable;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->mTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->mTimeout:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public onResult(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V
    .locals 3

    .line 339
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received cloud storage sync result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 320
    check-cast p1, Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->onResult(Lcom/oculus/cloudstoragehelper/CloudStorageResult;)V

    return-void
.end method

.method public startTimeout()V
    .locals 4

    .line 325
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;)V

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->mTimeout:Ljava/lang/Runnable;

    .line 334
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/CloudStorageDialog$CallbackWithTimeout;->mTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
