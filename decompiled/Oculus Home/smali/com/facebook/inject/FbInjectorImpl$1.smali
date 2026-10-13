.class Lcom/facebook/inject/FbInjectorImpl$1;
.super Ljava/lang/ThreadLocal;
.source "FbInjectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/FbInjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/inject/InjectorThreadStack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/inject/FbInjectorImpl;


# direct methods
.method constructor <init>(Lcom/facebook/inject/FbInjectorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/inject/FbInjectorImpl;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/inject/FbInjectorImpl$1;->this$0:Lcom/facebook/inject/FbInjectorImpl;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/facebook/inject/InjectorThreadStack;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/facebook/inject/InjectorThreadStack;

    iget-object v1, p0, Lcom/facebook/inject/FbInjectorImpl$1;->this$0:Lcom/facebook/inject/FbInjectorImpl;

    invoke-static {v1}, Lcom/facebook/inject/FbInjectorImpl;->access$000(Lcom/facebook/inject/FbInjectorImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/inject/InjectorThreadStack;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/inject/FbInjectorImpl$1;->initialValue()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v0

    return-object v0
.end method
