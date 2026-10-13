.class public Lorg/chromium/content/common/SurfaceWrapper;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:Landroid/view/Surface;

.field public final x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz01;

    invoke-direct {v0}, Lz01;-><init>()V

    sput-object v0, Lorg/chromium/content/common/SurfaceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/content/common/SurfaceWrapper;->w:Landroid/view/Surface;

    .line 3
    iput-boolean p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->x:Z

    return-void
.end method

.method public static create(Landroid/view/Surface;Z)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;Z)V

    return-object v0
.end method


# virtual methods
.method public canBeUsedWithSurfaceControl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->x:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/common/SurfaceWrapper;->w:Landroid/view/Surface;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->w:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-boolean p2, p0, Lorg/chromium/content/common/SurfaceWrapper;->x:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
