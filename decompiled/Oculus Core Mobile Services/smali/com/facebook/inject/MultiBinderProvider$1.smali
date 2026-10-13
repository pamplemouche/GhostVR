.class Lcom/facebook/inject/MultiBinderProvider$1;
.super Ljava/lang/Object;
.source "MultiBinderProvider.java"

# interfaces
.implements Lcom/facebook/inject/MultiBindIndexedProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/inject/MultiBinderProvider;->get()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/inject/MultiBindIndexedProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/inject/MultiBinderProvider;


# direct methods
.method constructor <init>(Lcom/facebook/inject/MultiBinderProvider;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/inject/MultiBinderProvider$1;->this$0:Lcom/facebook/inject/MultiBinderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide(Lcom/facebook/inject/Injector;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/Injector;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderProvider$1;->this$0:Lcom/facebook/inject/MultiBinderProvider;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderProvider;->access$000(Lcom/facebook/inject/MultiBinderProvider;)[Lcom/google/inject/Key;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {p1, v0}, Lcom/facebook/inject/Injector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/inject/MultiBinderProvider$1;->this$0:Lcom/facebook/inject/MultiBinderProvider;

    invoke-static {v0}, Lcom/facebook/inject/MultiBinderProvider;->access$000(Lcom/facebook/inject/MultiBinderProvider;)[Lcom/google/inject/Key;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
