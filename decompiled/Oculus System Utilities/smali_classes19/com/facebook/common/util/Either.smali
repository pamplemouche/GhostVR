.class public Lcom/facebook/common/util/Either;
.super Ljava/lang/Object;
.source "Either.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/common/base/Supplier",
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
            "Lcom/facebook/common/util/Either;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isLeft:Z

.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/common/util/Either$1;

    invoke-direct {v0}, Lcom/facebook/common/util/Either$1;-><init>()V

    sput-object v0, Lcom/facebook/common/util/Either;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readNext(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readBool(Landroid/os/Parcel;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/common/util/Either;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/common/util/Either$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/common/util/Either$1;

    .prologue
    .line 22
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    invoke-direct {p0, p1}, Lcom/facebook/common/util/Either;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p3, "isLeft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/common/util/Either;->left:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lcom/facebook/common/util/Either;->right:Ljava/lang/Object;

    .line 31
    iput-boolean p3, p0, Lcom/facebook/common/util/Either;->isLeft:Z

    .line 32
    return-void
.end method

.method public static left(Ljava/lang/Object;)Lcom/facebook/common/util/Either;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/facebook/common/util/Either",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "value":Ljava/lang/Object;, "TL;"
    new-instance v0, Lcom/facebook/common/util/Either;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/common/util/Either;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static right(Ljava/lang/Object;)Lcom/facebook/common/util/Either;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/facebook/common/util/Either",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "value":Ljava/lang/Object;, "TR;"
    new-instance v0, Lcom/facebook/common/util/Either;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/common/util/Either;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public cast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    invoke-virtual {p0}, Lcom/facebook/common/util/Either;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 119
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    instance-of v0, p1, Lcom/facebook/common/util/Either;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/util/Either;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/facebook/common/util/Either;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/facebook/common/util/Either;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fold(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-T",
            "L;",
            "+TX;>;",
            "Lcom/google/common/base/Function",
            "<-TR;+TX;>;)TX;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    .local p1, "ifLeft":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TL;+TX;>;"
    .local p2, "ifRight":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TR;+TX;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/Either;->isLeft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/util/Either;->left:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/util/Either;->right:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/Either;->isLeft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/util/Either;->left:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/util/Either;->right:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    invoke-virtual {p0}, Lcom/facebook/common/util/Either;->isLeft()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 56
    iget-object v0, p0, Lcom/facebook/common/util/Either;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    invoke-virtual {p0}, Lcom/facebook/common/util/Either;->isRight()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 61
    iget-object v0, p0, Lcom/facebook/common/util/Either;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 127
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/common/util/Either;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLeft()Z
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/Either;->isLeft:Z

    return v0
.end method

.method public isRight()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    iget-boolean v0, p0, Lcom/facebook/common/util/Either;->isLeft:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toLeft(Lcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<-TR;+T",
            "L;",
            ">;)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    .local p1, "rightToLeft":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TR;+TL;>;"
    invoke-static {}, Lcom/google/common/base/Functions;->identity()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/common/util/Either;->fold(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toRight(Lcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<-T",
            "L;",
            "+TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    .local p1, "leftToRight":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TL;+TR;>;"
    invoke-static {}, Lcom/google/common/base/Functions;->identity()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/util/Either;->fold(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    const-string v1, "Either.%s(%s)"

    iget-boolean v0, p0, Lcom/facebook/common/util/Either;->isLeft:Z

    if-eqz v0, :cond_0

    const-string v0, "left"

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/common/util/Either;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v1, v0, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "right"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    .local p0, "this":Lcom/facebook/common/util/Either;, "Lcom/facebook/common/util/Either<TL;TR;>;"
    iget-object v0, p0, Lcom/facebook/common/util/Either;->left:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/common/util/Either;->right:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lcom/facebook/common/util/Either;->isLeft:Z

    invoke-static {p1, v0}, Lcom/facebook/common/parcels/ParcelUtil;->writeBool(Landroid/os/Parcel;Z)V

    .line 96
    return-void
.end method
