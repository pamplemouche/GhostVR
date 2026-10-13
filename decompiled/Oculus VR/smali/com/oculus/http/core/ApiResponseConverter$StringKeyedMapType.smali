.class Lcom/oculus/http/core/ApiResponseConverter$StringKeyedMapType;
.super Ljava/lang/Object;
.source "ApiResponseConverter.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/http/core/ApiResponseConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringKeyedMapType"
.end annotation


# instance fields
.field private final mActualTypeArguments:[Ljava/lang/reflect/Type;


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/http/core/ApiResponseConverter$StringKeyedMapType;->mActualTypeArguments:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 130
    const-class v0, Ljava/util/Map;

    return-object v0
.end method
