.class Lcom/oculus/libraryapi/OCMSLibrary$1;
.super Ljava/lang/Object;
.source "OCMSLibrary.java"

# interfaces
.implements Lcom/oculus/library/model/InstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/libraryapi/OCMSLibrary;->downloadAndInstallAwait(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/InstallResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/libraryapi/OCMSLibrary;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$referenceResult:[Lcom/oculus/appmanager/info/model/InstallResult;


# direct methods
.method constructor <init>(Lcom/oculus/libraryapi/OCMSLibrary;[Lcom/oculus/appmanager/info/model/InstallResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary$1;->this$0:Lcom/oculus/libraryapi/OCMSLibrary;

    iput-object p2, p0, Lcom/oculus/libraryapi/OCMSLibrary$1;->val$referenceResult:[Lcom/oculus/appmanager/info/model/InstallResult;

    iput-object p3, p0, Lcom/oculus/libraryapi/OCMSLibrary$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallResult(Lcom/oculus/appmanager/info/model/InstallResult;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/oculus/libraryapi/OCMSLibrary$1;->val$referenceResult:[Lcom/oculus/appmanager/info/model/InstallResult;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 129
    iget-object p1, p0, Lcom/oculus/libraryapi/OCMSLibrary$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
