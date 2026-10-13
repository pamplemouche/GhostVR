.class public Lcom/facebook/common/parcels/ParcelableBoolean;
.super Ljava/lang/Object;
.source "ParcelableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/common/parcels/ParcelableBoolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/common/parcels/ParcelableBoolean$1;

    invoke-direct {v0}, Lcom/facebook/common/parcels/ParcelableBoolean$1;-><init>()V

    sput-object v0, Lcom/facebook/common/parcels/ParcelableBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/facebook/common/parcels/ParcelableBoolean;->value:Z

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/facebook/common/parcels/ParcelableBoolean;->value:Z

    invoke-static {p1, v0}, Lcom/facebook/common/parcels/ParcelUtil;->writeBool(Landroid/os/Parcel;Z)V

    .line 28
    return-void
.end method
