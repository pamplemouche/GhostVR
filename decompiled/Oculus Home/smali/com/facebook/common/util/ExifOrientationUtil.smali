.class public Lcom/facebook/common/util/ExifOrientationUtil;
.super Ljava/lang/Object;
.source "ExifOrientationUtil.java"


# static fields
.field private static final EXIF_ORIENTATION_TO_ROTATION_MAP:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<",
            "Lcom/facebook/common/util/ExifOrientation;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROTATION_TO_EXIF_ORIENTATION_MAP:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/common/util/ExifOrientation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->NORMAL:Lcom/facebook/common/util/ExifOrientation;

    const/4 v2, 0x0

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->ROTATE_90:Lcom/facebook/common/util/ExifOrientation;

    const/16 v2, 0x5a

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->ROTATE_180:Lcom/facebook/common/util/ExifOrientation;

    const/16 v2, 0xb4

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->ROTATE_270:Lcom/facebook/common/util/ExifOrientation;

    const/16 v2, 0x10e

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/util/ExifOrientationUtil;->EXIF_ORIENTATION_TO_ROTATION_MAP:Lcom/google/common/collect/ImmutableBiMap;

    .line 20
    sget-object v0, Lcom/facebook/common/util/ExifOrientationUtil;->EXIF_ORIENTATION_TO_ROTATION_MAP:Lcom/google/common/collect/ImmutableBiMap;

    .line 21
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/util/ExifOrientationUtil;->ROTATION_TO_EXIF_ORIENTATION_MAP:Lcom/google/common/collect/ImmutableBiMap;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDegrees(Lcom/facebook/common/util/ExifOrientation;)I
    .locals 1
    .param p0, "exifOrientation"    # Lcom/facebook/common/util/ExifOrientation;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/util/ExifOrientationUtil;->getDegrees(Lcom/facebook/common/util/ExifOrientation;I)I

    move-result v0

    return v0
.end method

.method public static getDegrees(Lcom/facebook/common/util/ExifOrientation;I)I
    .locals 2
    .param p0, "exifOrientation"    # Lcom/facebook/common/util/ExifOrientation;
    .param p1, "defaultDegrees"    # I

    .prologue
    .line 42
    sget-object v1, Lcom/facebook/common/util/ExifOrientationUtil;->EXIF_ORIENTATION_TO_ROTATION_MAP:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43
    .local v0, "degrees":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .end local p1    # "defaultDegrees":I
    :goto_0
    return p1

    .restart local p1    # "defaultDegrees":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getExifOrientation(I)Lcom/facebook/common/util/ExifOrientation;
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/facebook/common/util/ExifOrientation;->NORMAL:Lcom/facebook/common/util/ExifOrientation;

    invoke-static {p0, v0}, Lcom/facebook/common/util/ExifOrientationUtil;->getExifOrientation(ILcom/facebook/common/util/ExifOrientation;)Lcom/facebook/common/util/ExifOrientation;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(ILcom/facebook/common/util/ExifOrientation;)Lcom/facebook/common/util/ExifOrientation;
    .locals 3
    .param p0, "degrees"    # I
    .param p1, "defaultExifOrientation"    # Lcom/facebook/common/util/ExifOrientation;

    .prologue
    .line 67
    sget-object v1, Lcom/facebook/common/util/ExifOrientationUtil;->ROTATION_TO_EXIF_ORIENTATION_MAP:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/ExifOrientation;

    .line 68
    .local v0, "exifOrientation":Lcom/facebook/common/util/ExifOrientation;
    if-nez v0, :cond_0

    .end local p1    # "defaultExifOrientation":Lcom/facebook/common/util/ExifOrientation;
    :goto_0
    return-object p1

    .restart local p1    # "defaultExifOrientation":Lcom/facebook/common/util/ExifOrientation;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static getExifOrientationFromConfiguration(I)Lcom/facebook/common/util/ExifOrientation;
    .locals 1
    .param p0, "configOrientation"    # I

    .prologue
    .line 77
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 78
    sget-object v0, Lcom/facebook/common/util/ExifOrientation;->NORMAL:Lcom/facebook/common/util/ExifOrientation;

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 80
    sget-object v0, Lcom/facebook/common/util/ExifOrientation;->FLIP_HORIZONTAL:Lcom/facebook/common/util/ExifOrientation;

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Lcom/facebook/common/util/ExifOrientation;->UNDEFINED:Lcom/facebook/common/util/ExifOrientation;

    goto :goto_0
.end method
