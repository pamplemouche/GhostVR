.class Lcom/oculus/library/auth/LibraryAuthListener$1;
.super Ljava/lang/Object;
.source "LibraryAuthListener.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/auth/LibraryAuthListener;->beforeLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/auth/LibraryAuthListener;


# direct methods
.method constructor <init>(Lcom/oculus/library/auth/LibraryAuthListener;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/library/auth/LibraryAuthListener$1;->this$0:Lcom/oculus/library/auth/LibraryAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/oculus/library/auth/LibraryAuthListener$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/library/auth/LibraryAuthListener$1;->this$0:Lcom/oculus/library/auth/LibraryAuthListener;

    invoke-static {v0}, Lcom/oculus/library/auth/LibraryAuthListener;->access$000(Lcom/oculus/library/auth/LibraryAuthListener;)Lcom/oculus/library/database/LibraryStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/library/database/LibraryStorage;->clear()Z

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
