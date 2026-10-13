.class public LB41;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public w:I

.field public final synthetic x:LC41;


# direct methods
.method public synthetic constructor <init>(LC41;Lz41;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB41;->x:LC41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, LB41;->w:I

    iget-object v1, p0, LB41;->x:LC41;

    invoke-static {v1}, LC41;->a(LC41;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, LB41;->w:I

    iget-object v1, p0, LB41;->x:LC41;

    invoke-static {v1}, LC41;->a(LC41;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LB41;->x:LC41;

    iget v1, p0, LB41;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LB41;->w:I

    .line 3
    invoke-virtual {v0}, LC41;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, LC41;->w:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
