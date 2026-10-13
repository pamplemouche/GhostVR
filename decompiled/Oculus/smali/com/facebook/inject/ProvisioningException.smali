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

    .prologue
    .line 20
    invoke-static {p1}, Lcom/facebook/inject/ProvisioningException;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_0
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Lcom/facebook/inject/ProvisioningDebugStack;->getStackEntries()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;

    .line 43
    iget-object v3, v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->stackType:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    sget-object v4, Lcom/facebook/inject/ProvisioningDebugStack$StackType;->INSTANCE_GET:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    if-ne v3, v4, :cond_1

    .line 44
    const-string v3, " while trying to get instance of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_2
    iget-object v0, v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->key:Lcom/google/inject/Key;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 36
    :cond_0
    const-string v0, "Failure to provision."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, v0, Lcom/facebook/inject/ProvisioningDebugStack$StackEntry;->stackType:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    sget-object v4, Lcom/facebook/inject/ProvisioningDebugStack$StackType;->INJECT_COMPONENT:Lcom/facebook/inject/ProvisioningDebugStack$StackType;

    if-ne v3, v4, :cond_2

    .line 46
    const-string v3, " while trying to inject component of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    :cond_2
    const-string v3, " while trying to get provider of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 52
    :cond_3
    const-string v0, "If this is an instrumentation/screenshot test then you likely need to pass the "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "relevant DI module to the test rule, see https://fburl.com/wiki/24nviijj for "

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "more details.\n"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
