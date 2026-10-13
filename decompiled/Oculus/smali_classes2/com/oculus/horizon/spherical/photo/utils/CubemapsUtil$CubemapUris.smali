.class public Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;
.super Ljava/lang/Object;
.source "CubemapsUtil.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CubemapUris"
.end annotation


# instance fields
.field private final highResCubeMapSize:Landroid/util/Size;

.field private final highResCubeMapUri:Ljava/lang/String;

.field private final lowResCubeMapSize:Landroid/util/Size;

.field private final lowResCubeMapUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/Size;Ljava/lang/String;Landroid/util/Size;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->lowResCubeMapUri:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->lowResCubeMapSize:Landroid/util/Size;

    .line 25
    iput-object p3, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->highResCubeMapUri:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->highResCubeMapSize:Landroid/util/Size;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getHighResCubeMapSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->highResCubeMapSize:Landroid/util/Size;

    return-object v0
.end method

.method public getHighResCubeMapUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->highResCubeMapUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLowResCubeMapSize()Landroid/util/Size;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->lowResCubeMapSize:Landroid/util/Size;

    return-object v0
.end method

.method public getLowResCubeMapUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->lowResCubeMapUri:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->lowResCubeMapUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;->highResCubeMapUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
