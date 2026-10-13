.class Lcom/oculus/auth/components/LoginComponents$16;
.super Ljava/lang/Object;
.source "LoginComponents.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/auth/components/LoginComponents;->runPostLoginBroadcast()Lbolts/Task;
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
.field final synthetic this$0:Lcom/oculus/auth/components/LoginComponents;


# direct methods
.method constructor <init>(Lcom/oculus/auth/components/LoginComponents;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/oculus/auth/components/LoginComponents$16;->this$0:Lcom/oculus/auth/components/LoginComponents;

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
    .line 478
    invoke-virtual {p0}, Lcom/oculus/auth/components/LoginComponents$16;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$16;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v0}, Lcom/oculus/auth/components/LoginComponents;->access$600(Lcom/oculus/auth/components/LoginComponents;)V

    .line 483
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$16;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v0}, Lcom/oculus/auth/components/LoginComponents;->access$700(Lcom/oculus/auth/components/LoginComponents;)V

    .line 484
    iget-object v0, p0, Lcom/oculus/auth/components/LoginComponents$16;->this$0:Lcom/oculus/auth/components/LoginComponents;

    invoke-static {v0}, Lcom/oculus/auth/components/LoginComponents;->access$800(Lcom/oculus/auth/components/LoginComponents;)V

    .line 485
    const/4 v0, 0x0

    return-object v0
.end method
