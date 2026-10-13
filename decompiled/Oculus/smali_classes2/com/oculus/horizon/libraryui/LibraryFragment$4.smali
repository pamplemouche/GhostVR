.class Lcom/oculus/horizon/libraryui/LibraryFragment$4;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "LibraryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/LibraryFragment;->registerNewLibraryAsSeenInClientPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/LibraryFragment;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$4;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lcom/oculus/horizon/libraryui/LibraryFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: "

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 331
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/libraryui/LibraryFragment$4;->onResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 333
    return-void
.end method
