.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:LYi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LVi;

    invoke-direct {v0}, LVi;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LXi;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const-string v3, ""

    invoke-direct {v0, p1, v1, v2, v3}, LXi;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    .line 4
    invoke-virtual {v0}, LWi;->c()LYi;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->w:LYi;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    new-instance p2, LXi;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const-string v2, ""

    invoke-direct {p2, p1, v0, v1, v2}, LXi;-><init>(Landroid/os/Parcel;IILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->w:LYi;

    invoke-virtual {p2, p1}, LWi;->a(LYi;)V

    return-void
.end method
