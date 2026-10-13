.class public Lcom/facebook/inject/ScopeSet;
.super Ljava/lang/Object;
.source "ScopeSet.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final CONTEXT_SCOPE:B = 0x8t

.field public static final SINGLETON_SCOPE:B = 0x1t

.field public static final USER_SCOPE:B = 0x4t

.field private static final sScopeSetThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/inject/ScopeSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mScopes:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/inject/ScopeSet$1;

    invoke-direct {v0}, Lcom/facebook/inject/ScopeSet$1;-><init>()V

    sput-object v0, Lcom/facebook/inject/ScopeSet;->sScopeSetThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/facebook/inject/ScopeSet;->mScopes:B

    .line 33
    return-void
.end method

.method public static get()Lcom/facebook/inject/ScopeSet;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/inject/ScopeSet;->sScopeSetThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/ScopeSet;

    return-object v0
.end method

.method private static scopeToString(B)Ljava/lang/String;
    .locals 5
    .param p0, "scope"    # B

    .prologue
    .line 115
    sparse-switch p0, :sswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scope value %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :sswitch_0
    const-string v0, "SingletonScope"

    .line 121
    :goto_0
    return-object v0

    .line 119
    :sswitch_1
    const-string v0, "ContextScope"

    goto :goto_0

    .line 121
    :sswitch_2
    const-string v0, "UserScope"

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public varargs assertNoInvalidScopesInSet(B[B)V
    .locals 6
    .param p1, "currentScope"    # B
    .param p2, "scopesToCheck"    # [B

    .prologue
    .line 100
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v2, p2, v3

    .line 101
    .local v2, "scope":B
    invoke-virtual {p0, v2}, Lcom/facebook/inject/ScopeSet;->hasScope(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    invoke-static {p1}, Lcom/facebook/inject/ScopeSet;->scopeToString(B)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "currentScopeString":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/inject/ScopeSet;->scopeToString(B)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "invalidScopeString":Ljava/lang/String;
    new-instance v3, Lcom/facebook/inject/ProvisioningException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scope violation. Should not call inject "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v0    # "currentScopeString":Ljava/lang/String;
    .end local v1    # "invalidScopeString":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "scope":B
    :cond_1
    return-void
.end method

.method public enterScopes(B)B
    .locals 2
    .param p1, "seenScopes"    # B

    .prologue
    .line 77
    iget-byte v0, p0, Lcom/facebook/inject/ScopeSet;->mScopes:B

    .line 78
    .local v0, "ret":B
    iget-byte v1, p0, Lcom/facebook/inject/ScopeSet;->mScopes:B

    or-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/facebook/inject/ScopeSet;->mScopes:B

    .line 79
    return v0
.end method

.method public enterSingletonForStaticDI()B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v0

    return v0
.end method

.method public getSeenScopes()B
    .locals 1

    .prologue
    .line 63
    iget-byte v0, p0, Lcom/facebook/inject/ScopeSet;->mScopes:B

    return v0
.end method

.method public hasScope(B)Z
    .locals 1
    .param p1, "scope"    # B

    .prologue
    .line 55
    iget-byte v0, p0, Lcom/facebook/inject/ScopeSet;->mScopes:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetScopes(B)V
    .locals 0
    .param p1, "enterSeenScopesResult"    # B

    .prologue
    .line 88
    iput-byte p1, p0, Lcom/facebook/inject/ScopeSet;->mScopes:B

    .line 89
    return-void
.end method
