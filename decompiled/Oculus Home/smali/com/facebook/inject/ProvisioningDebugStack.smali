.class Lcom/facebook/inject/ProvisioningDebugStack;
.super Ljava/lang/Object;
.source "ProvisioningDebugStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;,
        Lcom/facebook/inject/ProvisioningDebugStack$StackType;
    }
.end annotation


# static fields
.field private static providerStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/inject/ProvisioningDebugStack$1;

    invoke-direct {v0}, Lcom/facebook/inject/ProvisioningDebugStack$1;-><init>()V

    sput-object v0, Lcom/facebook/inject/ProvisioningDebugStack;->providerStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackEntries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v5, Lcom/facebook/inject/ProvisioningDebugStack;->providerStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 69
    .local v3, "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 71
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    .line 72
    .local v4, "stackType":Lcom/facebook/inject/ProvisioningDebugStack$StackType;
    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Key;

    .line 73
    .local v1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    new-instance v5, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;

    invoke-direct {v5, v4, v1}, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;-><init>(Lcom/facebook/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 75
    .end local v1    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    .end local v4    # "stackType":Lcom/facebook/inject/ProvisioningDebugStack$StackType;
    :cond_0
    return-object v2
.end method

.method public static pop()V
    .locals 2

    .prologue
    .line 57
    sget-object v1, Lcom/facebook/inject/ProvisioningDebugStack;->providerStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    .local v0, "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public static push(Lcom/facebook/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V
    .locals 2
    .param p0, "type"    # Lcom/facebook/inject/ProvisioningDebugStack$StackType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/ProvisioningDebugStack$StackType;",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    sget-object v1, Lcom/facebook/inject/ProvisioningDebugStack;->providerStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    .local v0, "stack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
