.class Lcom/oculus/auth/components/LoginComponents$15;
.super Ljava/lang/Object;
.source "LoginComponents.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->runPostLoginTasksAsync(Ljava/lang/String;Lcom/oculus/auth/components/LoginComponents$Mode;Lcom/oculus/auth/components/AuthAction;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$15;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/oculus/auth/components/LoginComponents$15;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x3

    sget v1, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/components/LoginComponents$15;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v2}, Lcom/oculus/auth/components/LoginComponents;->access$200(Lcom/oculus/auth/components/LoginComponents;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    const-string v1, "LoginComponents"

    const-string v2, "Unexpected error executing post login tasks"

    .line 469
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    .line 468
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
