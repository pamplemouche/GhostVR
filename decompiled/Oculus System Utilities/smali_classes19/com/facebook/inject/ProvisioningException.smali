.class public Lcom/facebook/inject/ProvisioningException;
.super Ljava/lang/RuntimeException;
.source "ProvisioningException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/inject/ProvisioningException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p1}, Lcom/facebook/inject/ProvisioningException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    invoke-static {p1}, Lcom/facebook/inject/ProvisioningException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/inject/ProvisioningException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method private static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_0
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->getStackEntries()Ljava/util/List;

    move-result-object v3

    .line 40
    .local v3, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 41
    move-object v1, v3

    .line 42
    .local v1, "reverseStack":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;

    .line 43
    .local v0, "entry":Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;
    iget-object v5, v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->stackType:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    sget-object v6, Lcom/facebook/inject/ProvisioningDebugStack$StackType;->INSTANCE_GET:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    if-ne v5, v6, :cond_1

    .line 44
    const-string v5, " while trying to get instance of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_2
    iget-object v5, v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->key:Lcom/google/inject/Key;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 36
    .end local v0    # "entry":Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;
    .end local v1    # "reverseStack":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;>;"
    .end local v3    # "stack":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;>;"
    :cond_0
    const-string v4, "Failure to provision."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    .restart local v0    # "entry":Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;
    .restart local v1    # "reverseStack":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;>;"
    .restart local v3    # "stack":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;>;"
    :cond_1
    iget-object v5, v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->stackType:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    sget-object v6, Lcom/facebook/inject/ProvisioningDebugStack$StackType;->INJECT_COMPONENT:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    if-ne v5, v6, :cond_2

    .line 46
    const-string v5, " while trying to inject component of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    :cond_2
    const-string v5, " while trying to get provider of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 52
    .end local v0    # "entry":Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;
    :cond_3
    const-string v4, "If this is an instrumentation/screenshot test then you likely need to pass the "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "relevant DI module to the test rule, see https://ghostvr.pamplemouche.com/wiki/24nviijj for "

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "more details.\n"

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
