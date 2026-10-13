.class public Lcom/fasterxml/jackson/datatype/guava/GuavaModule;
.super Lcom/fasterxml/jackson/databind/Module;
.source "GuavaModule.java"


# instance fields
.field private final NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/Module;-><init>()V

    .line 10
    const-string v0, "GuavaModule"

    iput-object v0, p0, Lcom/fasterxml/jackson/datatype/guava/GuavaModule;->NAME:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "GuavaModule"

    return-object v0
.end method

.method public setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V
    .locals 1
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/Module$SetupContext;

    .prologue
    .line 22
    new-instance v0, Lcom/fasterxml/jackson/datatype/guava/GuavaDeserializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/datatype/guava/GuavaDeserializers;-><init>()V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)V

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/datatype/guava/GuavaSerializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/datatype/guava/GuavaSerializers;-><init>()V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)V

    .line 24
    new-instance v0, Lcom/fasterxml/jackson/datatype/guava/MultimapTypeModifier;

    invoke-direct {v0}, Lcom/fasterxml/jackson/datatype/guava/MultimapTypeModifier;-><init>()V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addTypeModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)V

    .line 25
    new-instance v0, Lcom/fasterxml/jackson/datatype/guava/ser/GuavaBeanSerializerModifier;

    invoke-direct {v0}, Lcom/fasterxml/jackson/datatype/guava/ser/GuavaBeanSerializerModifier;-><init>()V

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addBeanSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V

    .line 26
    return-void
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/fasterxml/jackson/datatype/guava/ModuleVersion;->instance:Lcom/fasterxml/jackson/datatype/guava/ModuleVersion;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/datatype/guava/ModuleVersion;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method
