.class Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$1;
.super Ljava/lang/Object;
.source "MobileConfigLoginHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->afterLoginAsync()Lbolts/Task;
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
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;


# direct methods
.method constructor <init>(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$1;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 96
    const/4 v0, 0x2

    sget v2, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$1;->this$0:Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;

    invoke-static {v3}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$100(Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softErrorWithCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    const/4 p1, 0x0

    .line 100
    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/oculus/mobileconfig/init/MobileConfigLoginHandler$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
