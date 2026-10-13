.class public Lld0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;-><init>(Landroid/os/Parcel;Lld0;)V

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    return-object p1
.end method
