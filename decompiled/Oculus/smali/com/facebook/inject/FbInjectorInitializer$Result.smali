.class Lcom/facebook/inject/FbInjectorInitializer$Result;
.super Ljava/lang/Object;
.source "FbInjectorInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/inject/FbInjectorInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field final bindingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/inject/Binding;",
            ">;"
        }
    .end annotation
.end field

.field final componentBindingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;"
        }
    .end annotation
.end field

.field final modulesInstalled:Ljava/util/Set;
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

.field final multiBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinder;",
            ">;"
        }
    .end annotation
.end field

.field final scopeMap:Ljava/util/Map;
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
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/inject/Binding;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/inject/Scope;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/ComponentBinding;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/inject/Module;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key;",
            "Lcom/facebook/inject/MultiBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/facebook/inject/FbInjectorInitializer$Result;->bindingMap:Ljava/util/Map;

    .line 82
    iput-object p2, p0, Lcom/facebook/inject/FbInjectorInitializer$Result;->scopeMap:Ljava/util/Map;

    .line 83
    iput-object p3, p0, Lcom/facebook/inject/FbInjectorInitializer$Result;->componentBindingMap:Ljava/util/Map;

    .line 84
    iput-object p4, p0, Lcom/facebook/inject/FbInjectorInitializer$Result;->modulesInstalled:Ljava/util/Set;

    .line 85
    iput-object p5, p0, Lcom/facebook/inject/FbInjectorInitializer$Result;->multiBindings:Ljava/util/Map;

    .line 86
    return-void
.end method
