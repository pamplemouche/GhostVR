.class public Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;
.super Ljava/lang/Object;
.source "PartialPanoUtil.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoBounds"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final partialBottom:F

.field private final partialLeft:F

.field private final partialRight:F

.field private final partialTop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds$1;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialLeft:F

    .line 26
    iput p2, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialRight:F

    .line 27
    iput p3, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialTop:F

    .line 28
    iput p4, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialBottom:F

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialLeft:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialRight:F

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialTop:F

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialBottom:F

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getPartialBottom()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialBottom:F

    return v0
.end method

.method public getPartialLeft()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialLeft:F

    return v0
.end method

.method public getPartialRight()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialRight:F

    return v0
.end method

.method public getPartialTop()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialTop:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialLeft:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 62
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialRight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 63
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialTop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 64
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->partialBottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 65
    return-void
.end method
