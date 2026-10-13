.class public Lcom/facebook/common/util/ParcelablePair;
.super Landroid/util/Pair;
.source "ParcelablePair.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Pair",
        "<TF;TS;>;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/common/util/ParcelablePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/common/util/ParcelablePair$1;

    invoke-direct {v0}, Lcom/facebook/common/util/ParcelablePair$1;-><init>()V

    sput-object v0, Lcom/facebook/common/util/ParcelablePair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/common/util/ParcelablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/common/util/ParcelablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/facebook/common/util/ParcelablePair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Lcom/facebook/common/util/ParcelablePair;

    invoke-direct {v0, p0, p1}, Lcom/facebook/common/util/ParcelablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    instance-of v0, p1, Lcom/facebook/common/util/ParcelablePair;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/util/ParcelablePair;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/facebook/common/util/ParcelablePair;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/facebook/common/util/ParcelablePair;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    invoke-virtual {p0}, Lcom/facebook/common/util/ParcelablePair;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    invoke-virtual {p0}, Lcom/facebook/common/util/ParcelablePair;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 53
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/common/util/ParcelablePair;->first:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/common/util/ParcelablePair;->second:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/common/util/ParcelablePair;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/facebook/common/util/ParcelablePair;, "Lcom/facebook/common/util/ParcelablePair<TF;TS;>;"
    iget-object v0, p0, Lcom/facebook/common/util/ParcelablePair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/facebook/common/util/ParcelablePair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
