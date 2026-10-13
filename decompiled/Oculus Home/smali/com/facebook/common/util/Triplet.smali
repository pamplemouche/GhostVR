.class public Lcom/facebook/common/util/Triplet;
.super Lcom/facebook/common/util/ParcelablePair;
.source "Triplet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/util/ParcelablePair",
        "<TF;TS;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/common/util/Triplet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final third:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/common/util/Triplet$1;

    invoke-direct {v0}, Lcom/facebook/common/util/Triplet$1;-><init>()V

    sput-object v0, Lcom/facebook/common/util/Triplet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    .local p0, "this":Lcom/facebook/common/util/Triplet;, "Lcom/facebook/common/util/Triplet<TF;TS;TT;>;"
    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/common/util/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/facebook/common/util/Triplet;, "Lcom/facebook/common/util/Triplet<TF;TS;TT;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    .local p3, "third":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/util/ParcelablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    iput-object p3, p0, Lcom/facebook/common/util/Triplet;->third:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/common/util/Triplet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;)",
            "Lcom/facebook/common/util/Triplet",
            "<TA;TB;TC;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    new-instance v0, Lcom/facebook/common/util/Triplet;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/common/util/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 48
    .local p0, "this":Lcom/facebook/common/util/Triplet;, "Lcom/facebook/common/util/Triplet<TF;TS;TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/common/util/Triplet;->first:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/common/util/Triplet;->second:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/common/util/Triplet;->third:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    .local p0, "this":Lcom/facebook/common/util/Triplet;, "Lcom/facebook/common/util/Triplet<TF;TS;TT;>;"
    invoke-super {p0, p1, p2}, Lcom/facebook/common/util/ParcelablePair;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    iget-object v0, p0, Lcom/facebook/common/util/Triplet;->third:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
