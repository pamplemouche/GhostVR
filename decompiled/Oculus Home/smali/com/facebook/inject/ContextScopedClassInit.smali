.class public final Lcom/facebook/inject/ContextScopedClassInit;
.super Ljava/lang/Object;
.source "ContextScopedClassInit.java"


# instance fields
.field private mContextScope:Lcom/facebook/inject/ContextScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mEnterResult:Ljava/lang/Byte;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public mInstance:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mScopeSet:Lcom/facebook/inject/ScopeSet;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mValueInAppContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/facebook/inject/ContextScopedClassInit;)Lcom/facebook/inject/ContextScopedClassInit;
    .locals 2
    .param p0, "state"    # Lcom/facebook/inject/ContextScopedClassInit;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance p0, Lcom/facebook/inject/ContextScopedClassInit;

    .end local p0    # "state":Lcom/facebook/inject/ContextScopedClassInit;
    invoke-direct {p0}, Lcom/facebook/inject/ContextScopedClassInit;-><init>()V

    .line 64
    .restart local p0    # "state":Lcom/facebook/inject/ContextScopedClassInit;
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reentrant injection or failed cleanup detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mContextScope:Lcom/facebook/inject/ContextScope;

    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/ContextScope;->exitScope(Lcom/facebook/inject/InjectorThreadStack;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;

    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/facebook/common/propertybag/PropertyBag;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mEnterResult:Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mEnterResult:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/ScopeSet;->resetScopes(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_2
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    .line 165
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mContextScope:Lcom/facebook/inject/ContextScope;

    .line 166
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;

    .line 167
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mEnterResult:Ljava/lang/Byte;

    .line 168
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    .line 169
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    .line 171
    return-void

    .line 153
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mValueInAppContext:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mValueInAppContext:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    .line 165
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mContextScope:Lcom/facebook/inject/ContextScope;

    .line 166
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;

    .line 167
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mEnterResult:Ljava/lang/Byte;

    .line 168
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    .line 169
    iput-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    throw v0
.end method

.method public final getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    invoke-virtual {v0}, Lcom/facebook/inject/InjectorThreadStack;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v0

    return-object v0
.end method

.method public final prepareForCreateInstance(Lcom/facebook/inject/InjectorLike;)Z
    .locals 3
    .param p1, "injector"    # Lcom/facebook/inject/InjectorLike;

    .prologue
    .line 79
    invoke-static {}, Lcom/facebook/inject/ScopeSet;->get()Lcom/facebook/inject/ScopeSet;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    .line 80
    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mScopeSet:Lcom/facebook/inject/ScopeSet;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/facebook/inject/ScopeSet;->enterScopes(B)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mEnterResult:Ljava/lang/Byte;

    .line 87
    invoke-interface {p1}, Lcom/facebook/inject/InjectorLike;->getScopeAwareInjector()Lcom/facebook/inject/ScopeAwareInjector;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/inject/ScopeAwareInjector;->getInjectorContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Lcom/facebook/inject/ProvisioningException;

    const-string v2, "Called context scoped provider outside of context scope"

    invoke-direct {v1, v2}, Lcom/facebook/inject/ProvisioningException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    const-class v1, Lcom/facebook/inject/ContextScoped;

    invoke-interface {p1, v1}, Lcom/facebook/inject/InjectorLike;->getScope(Ljava/lang/Class;)Lcom/facebook/inject/Scope;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/ContextScope;

    iput-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mContextScope:Lcom/facebook/inject/ContextScope;

    .line 98
    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mContextScope:Lcom/facebook/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/inject/ContextScope;->getPropertyBagForContext(Landroid/content/Context;)Lcom/facebook/common/propertybag/PropertyBag;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;

    .line 99
    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mPropertyBag:Lcom/facebook/common/propertybag/PropertyBag;

    invoke-interface {v1, p0}, Lcom/facebook/common/propertybag/PropertyBag;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x0

    .line 115
    :goto_1
    return v1

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mValueInAppContext:Ljava/lang/Object;

    iput-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInstance:Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {p1}, Lcom/facebook/inject/InjectorLike;->getInjectorThreadStack()Lcom/facebook/inject/InjectorThreadStack;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    .line 113
    iget-object v1, p0, Lcom/facebook/inject/ContextScopedClassInit;->mContextScope:Lcom/facebook/inject/ContextScope;

    iget-object v2, p0, Lcom/facebook/inject/ContextScopedClassInit;->mInjectorThreadStack:Lcom/facebook/inject/InjectorThreadStack;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/inject/ContextScope;->enterScope(Landroid/content/Context;Lcom/facebook/inject/InjectorThreadStack;)V

    .line 115
    const/4 v1, 0x1

    goto :goto_1
.end method
