.class Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/util/ReflectionUtils$FieldMap;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/reflect/Field;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/common/util/ReflectionUtils$FieldMap;

.field final synthetic val$instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/common/util/ReflectionUtils$FieldMap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/common/util/ReflectionUtils$FieldMap;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;->this$0:Lcom/facebook/common/util/ReflectionUtils$FieldMap;

    iput-object p2, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;->apply(Ljava/lang/reflect/Field;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/reflect/Field;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;-><init>(Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;Ljava/lang/reflect/Field;)V

    return-object v0
.end method
