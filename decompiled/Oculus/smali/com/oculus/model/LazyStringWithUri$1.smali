.class final Lcom/oculus/model/LazyStringWithUri$1;
.super Ljava/lang/Object;
.source "LazyStringWithUri.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/model/LazyStringWithUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oculus/model/LazyStringWithUri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/model/LazyStringWithUri;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/oculus/model/LazyStringWithUri;

    invoke-direct {v0, p1}, Lcom/oculus/model/LazyStringWithUri;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/oculus/model/LazyStringWithUri$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/model/LazyStringWithUri;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/model/LazyStringWithUri;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcom/oculus/model/LazyStringWithUri;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/oculus/model/LazyStringWithUri$1;->newArray(I)[Lcom/oculus/model/LazyStringWithUri;

    move-result-object v0

    return-object v0
.end method
