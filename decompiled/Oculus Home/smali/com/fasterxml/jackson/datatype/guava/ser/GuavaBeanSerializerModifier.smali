.class public Lcom/fasterxml/jackson/datatype/guava/ser/GuavaBeanSerializerModifier;
.super Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
.source "GuavaBeanSerializerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public changeProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, "beanProperties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 19
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 20
    .local v1, "writer":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const-class v2, Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getPropertyType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    new-instance v2, Lcom/fasterxml/jackson/datatype/guava/ser/GuavaOptionalBeanPropertyWriter;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/datatype/guava/ser/GuavaOptionalBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    invoke-interface {p3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    .end local v1    # "writer":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    return-object p3
.end method
