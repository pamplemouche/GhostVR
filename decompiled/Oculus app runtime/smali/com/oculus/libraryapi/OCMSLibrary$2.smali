.class Lcom/oculus/libraryapi/OCMSLibrary$2;
.super Ljava/lang/Object;
.source "OCMSLibrary.java"

# interfaces
.implements Lcom/oculus/library/model/UninstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/libraryapi/OCMSLibrary;->uninstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/UninstallResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/libraryapi/OCMSLibrary;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$referenceResult:[Lcom/oculus/appmanager/info/model/UninstallResult;


# direct methods
.method constructor <init>(Lcom/oculus/libraryapi/OCMSLibrary;[Lcom/oculus/appmanager/info/model/UninstallResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary$2;->this$0:Lcom/oculus/libraryapi/OCMSLibrary;

    iput-object p2, p0, Lcom/oculus/libraryapi/OCMSLibrary$2;->val$referenceResult:[Lcom/oculus/appmanager/info/model/UninstallResult;

    iput-object p3, p0, Lcom/oculus/libraryapi/OCMSLibrary$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUninstallResult(Lcom/oculus/appmanager/info/model/UninstallResult;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary$2;->val$referenceResult:[Lcom/oculus/appmanager/info/model/UninstallResult;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 202
    iget-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
