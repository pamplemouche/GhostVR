.class Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;
.super Ljava/lang/Object;
.source "AccountLinkingModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/AccountLinkingModule;->unlink(Ljava/lang/String;I)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

.field final synthetic val$serviceProvider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    iput-object p2, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;->val$serviceProvider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;->this$0:Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$100(Lcom/oculus/vrshell/home/module/AccountLinkingModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->access$000()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;->val$serviceProvider:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
