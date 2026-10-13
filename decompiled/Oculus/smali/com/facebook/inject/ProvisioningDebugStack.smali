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
    sget-object v0, Lcom/facebook/inject/ProvisioningDebugStack;->providerStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    .line 72
    add-int/lit8 v2, v3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/Key;

    .line 73
    new-instance v5, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;

    invoke-direct {v5, v1, v2}, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;-><init>(Lcom/facebook/inject/ProvisioningDebugStack$StackType;Lcom/google/inject/Key;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v3, 0x2

    move v3, v1

    goto :goto_0

    .line 75
    :cond_0
    return-object v4
.end method

.method public static pop()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/facebook/inject/ProvisioningDebugStack;->providerStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
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
    .locals 1
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
    sget-object v0, Lcom/facebook/inject/ProvisioningDebugStack;->providerStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
