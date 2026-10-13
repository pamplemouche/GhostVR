.class public Lcom/oculus/horizon/spherical/gl/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/gl/Geometry$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public count:I

.field public final elementType:I

.field public final indexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final vertexDataMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/spherical/gl/VertexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->access$100(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry;->vertexDataMap:Lcom/google/common/collect/ImmutableMap;

    .line 113
    invoke-static {p1}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->access$200(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)Lcom/oculus/horizon/spherical/gl/IndexArray;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry;->indexArray:Lcom/oculus/horizon/spherical/gl/IndexArray;

    .line 114
    invoke-static {p1}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->access$300(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry;->elementType:I

    .line 115
    invoke-static {p1}, Lcom/oculus/horizon/spherical/gl/Geometry$Builder;->access$400(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/gl/Geometry;->count:I

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;Lcom/oculus/horizon/spherical/gl/Geometry$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/gl/Geometry;-><init>(Lcom/oculus/horizon/spherical/gl/Geometry$Builder;)V

    return-void
.end method
