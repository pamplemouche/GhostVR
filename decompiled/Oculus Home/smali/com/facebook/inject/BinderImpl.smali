.class public Lcom/facebook/inject/BinderImpl;
.super Ljava/lang/Object;
.source "BinderImpl.java"

# interfaces
.implements Lcom/facebook/inject/Binder;


# instance fields
.field private mAssertedBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeclaringModule:Ljava/lang/Class;

.field private mDependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/facebook/inject/FbInjector;

.field private mMultiBindingDeclarations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinding;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiredModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScopes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/FbInjector;Ljava/lang/Class;)V
    .locals 0
    .param p1, "injector"    # Lcom/facebook/inject/FbInjector;
    .param p2, "declaringModule"    # Ljava/lang/Class;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/inject/BinderImpl;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 44
    iput-object p2, p0, Lcom/facebook/inject/BinderImpl;->mDeclaringModule:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method private addBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/Binding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    if-nez v1, :cond_0

    .line 172
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    .line 174
    :cond_0
    new-instance v0, Lcom/facebook/inject/Binding;

    invoke-direct {v0}, Lcom/facebook/inject/Binding;-><init>()V

    .line 175
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mDeclaringModule:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setModule(Ljava/lang/Class;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/facebook/inject/Binding;->setKey(Lcom/google/inject/Key;)V

    .line 177
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-object v0
.end method

.method private addComponentBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/ComponentBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/ComponentBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mComponentBindings:Ljava/util/List;

    if-nez v1, :cond_0

    .line 183
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/BinderImpl;->mComponentBindings:Ljava/util/List;

    .line 185
    :cond_0
    new-instance v0, Lcom/facebook/inject/ComponentBinding;

    invoke-direct {v0}, Lcom/facebook/inject/ComponentBinding;-><init>()V

    .line 186
    .local v0, "binding":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mDeclaringModule:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/facebook/inject/ComponentBinding;->setModule(Ljava/lang/Class;)V

    .line 187
    invoke-virtual {v0, p1}, Lcom/facebook/inject/ComponentBinding;->setKey(Lcom/google/inject/Key;)V

    .line 188
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mComponentBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-object v0
.end method

.method private addDependency(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/inject/Module;>;"
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mDependencies:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mDependencies:Ljava/util/Set;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mDependencies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method private addMultiBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 194
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/MultiBinding;

    .line 197
    .local v0, "multiBinding":Lcom/facebook/inject/MultiBinding;
    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/facebook/inject/MultiBinding;

    .end local v0    # "multiBinding":Lcom/facebook/inject/MultiBinding;
    invoke-direct {v0, p1}, Lcom/facebook/inject/MultiBinding;-><init>(Lcom/google/inject/Key;)V

    .line 199
    .restart local v0    # "multiBinding":Lcom/facebook/inject/MultiBinding;
    iget-object v1, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    return-object v0
.end method


# virtual methods
.method public assertBindingInstalled(Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public assertBindingInstalled(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public assertBindingInstalled(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "annotatedWith":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public bind(Lcom/google/inject/TypeLiteral;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/inject/BinderImpl;->addBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/Binding;

    move-result-object v0

    .line 56
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    new-instance v1, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    return-object v1
.end method

.method public bind(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/inject/BinderImpl;->addBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/Binding;

    move-result-object v0

    .line 50
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    new-instance v1, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    return-object v1
.end method

.method public bind(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/inject/BinderImpl;->addBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/Binding;

    move-result-object v0

    .line 62
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    new-instance v1, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    return-object v1
.end method

.method public bindAssistedProvider(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/AssistedProvider",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "assistedProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/inject/AssistedProvider<TT;>;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/inject/BinderImpl;->bind(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/inject/AssistedProviderProvider;

    invoke-direct {v1, p1}, Lcom/facebook/inject/AssistedProviderProvider;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/facebook/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljavax/inject/Provider;)Lcom/facebook/inject/binder/ScopedBindingBuilder;

    .line 95
    return-void
.end method

.method public bindComponent(Ljava/lang/Class;)Lcom/facebook/inject/binder/LinkedComponentBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/LinkedComponentBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/inject/BinderImpl;->addComponentBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/ComponentBinding;

    move-result-object v0

    .line 89
    .local v0, "binding":Lcom/facebook/inject/ComponentBinding;, "Lcom/facebook/inject/ComponentBinding<TT;>;"
    new-instance v1, Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/inject/binder/LinkedComponentBindingBuilderImpl;-><init>(Lcom/facebook/inject/ComponentBinding;)V

    return-object v1
.end method

.method public bindDefault(Lcom/google/inject/TypeLiteral;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/inject/BinderImpl;->addBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/Binding;

    move-result-object v0

    .line 75
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setDefaultBinding(Z)V

    .line 76
    new-instance v1, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    return-object v1
.end method

.method public bindDefault(Ljava/lang/Class;)Lcom/facebook/inject/binder/AnnotatedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/inject/BinderImpl;->addBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/Binding;

    move-result-object v0

    .line 68
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setDefaultBinding(Z)V

    .line 69
    new-instance v1, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    return-object v1
.end method

.method public bindDefault(Lcom/google/inject/Key;)Lcom/facebook/inject/binder/LinkedBindingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/inject/BinderImpl;->addBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/Binding;

    move-result-object v0

    .line 82
    .local v0, "binding":Lcom/facebook/inject/Binding;, "Lcom/facebook/inject/Binding<TT;>;"
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/inject/Binding;->setDefaultBinding(Z)V

    .line 83
    new-instance v1, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;

    invoke-direct {v1, v0}, Lcom/facebook/inject/binder/AnnotatedBindingBuilderImpl;-><init>(Lcom/facebook/inject/Binding;)V

    return-object v1
.end method

.method public bindMulti(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/inject/BinderImpl;->addMultiBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method public bindMulti(Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/inject/BinderImpl;->addMultiBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method public bindMulti(Ljava/lang/Class;Ljava/lang/Class;)Lcom/facebook/inject/MultiBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/facebook/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/inject/BinderImpl;->addMultiBinding(Lcom/google/inject/Key;)Lcom/facebook/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method public bindScope(Ljava/lang/Class;Lcom/facebook/inject/Scope;)V
    .locals 1
    .param p2, "scope"    # Lcom/facebook/inject/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public declareMultiBinding(Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindingDeclarations:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindingDeclarations:Ljava/util/Set;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindingDeclarations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public declareMultiBinding(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/inject/BinderImpl;->declareMultiBinding(Lcom/google/inject/Key;)V

    .line 100
    return-void
.end method

.method public declareMultiBinding(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, p2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/inject/BinderImpl;->declareMultiBinding(Lcom/google/inject/Key;)V

    .line 105
    return-void
.end method

.method public getAssertedBindings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mAssertedBindings:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 141
    .local v1, "builder":Lcom/google/common/collect/ImmutableList$Builder;
    iget-object v4, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 142
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 143
    .local v3, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/facebook/inject/BinderImpl;->mBindings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/Binding;

    .line 144
    .local v0, "binding":Lcom/facebook/inject/Binding;
    invoke-virtual {v0}, Lcom/facebook/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ultralight/UL$id;->dynamicId(Lcom/google/inject/Key;)I

    move-result v2

    .line 145
    .local v2, "key":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 152
    .end local v0    # "binding":Lcom/facebook/inject/Binding;
    .end local v2    # "key":I
    .end local v3    # "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    return-object v4
.end method

.method public getComponentBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mComponentBindings:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mComponentBindings:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mDependencies:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mDependencies:Ljava/util/Set;

    goto :goto_0
.end method

.method public getInjector()Lcom/facebook/inject/Injector;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mInjector:Lcom/facebook/inject/FbInjector;

    return-object v0
.end method

.method public getMultiBindingDeclarations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindingDeclarations:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindingDeclarations:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getMultiBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mMultiBindings:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequiredModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mRequiredModules:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mRequiredModules:Ljava/util/List;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getScopes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mScopes:Ljava/util/Map;

    goto :goto_0
.end method

.method public require(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/LibraryModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/inject/LibraryModule;>;"
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mRequiredModules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/inject/BinderImpl;->mRequiredModules:Ljava/util/List;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/facebook/inject/BinderImpl;->mRequiredModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-direct {p0, p1}, Lcom/facebook/inject/BinderImpl;->addDependency(Ljava/lang/Class;)V

    .line 255
    return-void
.end method
