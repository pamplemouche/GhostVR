.class Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;->apply(Ljava/lang/reflect/Field;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;

.field final synthetic val$field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->this$1:Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;

    iput-object p2, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->val$field:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->this$1:Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;

    iget-object v0, v0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;->val$instance:Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->val$field:Ljava/lang/reflect/Field;

    invoke-static {v0, v1}, Lcom/facebook/common/util/ReflectionUtils;->readField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "old":Ljava/lang/Object;
    iget-object v1, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->this$1:Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;

    iget-object v1, v1, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;->val$instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1$1;->val$field:Ljava/lang/reflect/Field;

    invoke-static {v1, v2, p1}, Lcom/facebook/common/util/ReflectionUtils;->writeField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 252
    return-object v0
.end method
