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


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/oculus/http/core/ApiResponseConverter$StringKeyedMapType;->mActualTypeArguments:[Ljava/lang/reflect/Type;

    .line 116
    return-void
.end method


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
