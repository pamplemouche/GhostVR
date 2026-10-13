.class public Lcom/oculus/horizon/spherical/gl/Geometry$Builder;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/gl/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCount:I

.field private mElementType:I

.field private mIndexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mVertexDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/spherical/gl/VertexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mElementType:I

    .line 51
    iput p1, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mCount:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mVertexDataMap:Ljava/util/Map;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mVertexDataMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)Lcom/oculus/horizon/spherical/gl/IndexArray;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mIndexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mElementType:I

    return v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mCount:I

    return v0
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/spherical/gl/Geometry;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/oculus/horizon/spherical/gl/Geometry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/spherical/gl/Geometry;-><init>(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;Lcom/oculus/horizon/spherical/gl/Geometry$1;)V

    return-object v0
.end method

.method public setElementType(I)Lcom/oculus/horizon/spherical/gl/Geometry$Builder;
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mElementType:I

    .line 103
    return-object p0
.end method

.method public setIndexArray(Lcom/oculus/horizon/spherical/gl/IndexArray;)Lcom/oculus/horizon/spherical/gl/Geometry$Builder;
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/gl/IndexArray;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mIndexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;

    .line 86
    return-object p0
.end method

.method public setVertexAttributeData(Ljava/lang/String;Lcom/oculus/horizon/spherical/gl/VertexData;)Lcom/oculus/horizon/spherical/gl/Geometry$Builder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->mVertexDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object p0
.end method
