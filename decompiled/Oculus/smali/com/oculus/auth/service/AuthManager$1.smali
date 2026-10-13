.class Lcom/oculus/auth/service/AuthManager$1;
.super Ljava/lang/Object;
.source "AuthManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/service/AuthManager;->performLogout(Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/oculus/auth/service/AuthManager;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/AuthManager;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$1;->this$0:Lcom/oculus/auth/service/AuthManager;

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
    .line 297
    invoke-virtual {p0}, Lcom/oculus/auth/service/AuthManager$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 300
    const/4 v0, 0x3

    sget v1, Lcom/oculus/auth/components/ComponentsModule$UL_id;->$ul_$xXXcom_oculus_auth_components_LogoutComponents$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$1;->this$0:Lcom/oculus/auth/service/AuthManager;

    invoke-static {v2}, Lcom/oculus/auth/service/AuthManager;->access$200(Lcom/oculus/auth/service/AuthManager;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/components/LogoutComponents;

    invoke-virtual {v0}, Lcom/oculus/auth/components/LogoutComponents;->clear()V

    .line 301
    const/4 v0, 0x0

    return-object v0
.end method
