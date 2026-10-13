.class public Lcom/fasterxml/jackson/datatype/guava/MultimapTypeModifier;
.super Lcom/fasterxml/jackson/databind/type/TypeModifier;
.source "MultimapTypeModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/type/TypeModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "jdkType"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p4, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 14
    const-class v2, Lcom/google/common/collect/Multimap;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 17
    .local v1, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 19
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_0

    .line 21
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p4, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 24
    :cond_0
    if-nez v0, :cond_1

    .line 26
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p4, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p4, v2, v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p1

    .line 32
    .end local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v1    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local p1    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    return-object p1
.end method
