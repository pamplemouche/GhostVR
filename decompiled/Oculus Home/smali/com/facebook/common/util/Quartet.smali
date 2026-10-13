.class public Lcom/facebook/common/util/Quartet;
.super Lcom/facebook/common/util/Triplet;
.source "Quartet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/util/Triplet",
        "<TT1;TT2;TT3;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/common/util/Quartet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fourth:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT4;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/common/util/Quartet$1;

    invoke-direct {v0}, Lcom/facebook/common/util/Quartet$1;-><init>()V

    sput-object v0, Lcom/facebook/common/util/Quartet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    .line 20
    .local p0, "this":Lcom/facebook/common/util/Quartet;, "Lcom/facebook/common/util/Quartet<TT1;TT2;TT3;TT4;>;"
    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/common/util/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/facebook/common/util/Quartet;, "Lcom/facebook/common/util/Quartet<TT1;TT2;TT3;TT4;>;"
    .local p1, "first":Ljava/lang/Object;, "TT1;"
    .local p2, "second":Ljava/lang/Object;, "TT2;"
    .local p3, "third":Ljava/lang/Object;, "TT3;"
    .local p4, "fourth":Ljava/lang/Object;, "TT4;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/common/util/Triplet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    iput-object p4, p0, Lcom/facebook/common/util/Quartet;->fourth:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/common/util/Quartet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(TA;TB;TC;TD;)",
            "Lcom/facebook/common/util/Quartet",
            "<TA;TB;TC;TD;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "a":Ljava/lang/Object;, "TA;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    .local p2, "c":Ljava/lang/Object;, "TC;"
    .local p3, "d":Ljava/lang/Object;, "TD;"
    new-instance v0, Lcom/facebook/common/util/Quartet;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/common/util/Quartet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 52
    .local p0, "this":Lcom/facebook/common/util/Quartet;, "Lcom/facebook/common/util/Quartet<TT1;TT2;TT3;TT4;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/common/util/Quartet;->first:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/common/util/Quartet;->second:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/common/util/Quartet;->third:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/facebook/common/util/Quartet;->fourth:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/facebook/common/util/Quartet;, "Lcom/facebook/common/util/Quartet<TT1;TT2;TT3;TT4;>;"
    invoke-super {p0, p1, p2}, Lcom/facebook/common/util/Triplet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget-object v0, p0, Lcom/facebook/common/util/Quartet;->fourth:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
