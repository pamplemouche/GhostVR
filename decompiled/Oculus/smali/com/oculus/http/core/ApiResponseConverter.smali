.class public Lcom/oculus/http/core/ApiResponseConverter;
.super Ljava/lang/Object;
.source "ApiResponseConverter.java"

# interfaces
.implements Lretrofit/converter/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/http/core/ApiResponseConverter$StringKeyedMapType;
    }
.end annotation


# instance fields
.field private final mGsonConverter:Lretrofit/converter/GsonConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lretrofit/converter/GsonConverter;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v0, v1}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    iput-object v0, p0, Lcom/oculus/http/core/ApiResponseConverter;->mGsonConverter:Lretrofit/converter/GsonConverter;

    .line 36
    return-void
.end method

.method private getJsonObjectFromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/converter/ConversionException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/oculus/http/core/ApiResponseConverter;->isSingleEntryMapResponseType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/oculus/http/core/ApiResponseConverter$StringKeyedMapType;

    invoke-direct {v0, p2}, Lcom/oculus/http/core/ApiResponseConverter$StringKeyedMapType;-><init>(Ljava/lang/reflect/Type;)V

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/oculus/http/core/ApiResponseConverter;->mGsonConverter:Lretrofit/converter/GsonConverter;

    invoke-virtual {v1, p1, v0}, Lretrofit/converter/GsonConverter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/converter/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lretrofit/converter/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/oculus/http/core/ApiResponseConverter;->getSimpleNameFromType(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lretrofit/converter/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse concrete class out of map. Maybe the response wasn\'t an actual map? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    invoke-virtual {v0}, Lretrofit/converter/ConversionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oculus/http/core/ApiResponseConverter;->mGsonConverter:Lretrofit/converter/GsonConverter;

    invoke-virtual {v0, p1, p2}, Lretrofit/converter/GsonConverter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    return-object v0
.end method

.method private getObjectFromJsonMapResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/converter/ConversionException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    check-cast p1, Ljava/util/Map;

    .line 85
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 86
    new-instance v0, Lretrofit/converter/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion map must contain exactly one element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lretrofit/converter/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json response not a map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lretrofit/converter/ConversionException;

    const-string v1, "Found a map, but value was null"

    invoke-direct {v0, v1}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :cond_1
    return-object v0
.end method

.method private getSimpleNameFromType(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSingleEntryMapResponseType(Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 77
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    const-class v0, Lcom/oculus/http/core/annotations/SingleEntryMapResponse;

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/converter/ConversionException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oculus/http/core/ApiResponseConverter;->getJsonObjectFromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    invoke-direct {p0, p2}, Lcom/oculus/http/core/ApiResponseConverter;->isSingleEntryMapResponseType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-direct {p0, v0}, Lcom/oculus/http/core/ApiResponseConverter;->getObjectFromJsonMapResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    :cond_0
    return-object v0
.end method

.method public toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/http/core/ApiResponseConverter;->mGsonConverter:Lretrofit/converter/GsonConverter;

    invoke-virtual {v0, p1}, Lretrofit/converter/GsonConverter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v0

    return-object v0
.end method
