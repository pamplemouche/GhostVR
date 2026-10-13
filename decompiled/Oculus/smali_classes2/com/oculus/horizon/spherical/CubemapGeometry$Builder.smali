.class public Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;
.super Ljava/lang/Object;
.source "CubemapGeometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/CubemapGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field rotation:Lcom/oculus/horizon/spherical/Quaternion;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field textureCoords:Lcom/oculus/horizon/spherical/gl/VertexData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/spherical/gl/Geometry;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;-><init>(I)V

    const/4 v1, 0x4

    .line 101
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->setElementType(I)Lcom/oculus/horizon/spherical/gl/Geometry$Builder;

    move-result-object v0

    const-string v1, "aPosition"

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;->rotation:Lcom/oculus/horizon/spherical/Quaternion;

    .line 102
    invoke-static {v2, v3}, Lcom/oculus/horizon/spherical/CubemapGeometry;->access$100(FLcom/oculus/horizon/spherical/Quaternion;)Lcom/oculus/horizon/spherical/gl/VertexData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->setVertexAttributeData(Ljava/lang/String;Lcom/oculus/horizon/spherical/gl/VertexData;)Lcom/oculus/horizon/spherical/gl/Geometry$Builder;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/oculus/horizon/spherical/CubemapGeometry;->access$000()Lcom/oculus/horizon/spherical/gl/IndexArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->setIndexArray(Lcom/oculus/horizon/spherical/gl/IndexArray;)Lcom/oculus/horizon/spherical/gl/Geometry$Builder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;->textureCoords:Lcom/oculus/horizon/spherical/gl/VertexData;

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "aTextureCoord"

    iget-object v2, p0, Lcom/oculus/horizon/spherical/CubemapGeometry$Builder;->textureCoords:Lcom/oculus/horizon/spherical/gl/VertexData;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->setVertexAttributeData(Ljava/lang/String;Lcom/oculus/horizon/spherical/gl/VertexData;)Lcom/oculus/horizon/spherical/gl/Geometry$Builder;

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->build()Lcom/oculus/horizon/spherical/gl/Geometry;

    move-result-object v0

    return-object v0
.end method
