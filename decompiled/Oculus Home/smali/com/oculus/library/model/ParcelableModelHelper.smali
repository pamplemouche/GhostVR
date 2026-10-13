.class public Lcom/oculus/library/model/ParcelableModelHelper;
.super Ljava/lang/Object;
.source "ParcelableModelHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertImageListToMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/Image;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/library/model/Image$ImageName;",
            "Lcom/oculus/library/model/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/Image;>;"
    if-nez p0, :cond_1

    .line 15
    const/4 v1, 0x0

    .line 21
    :cond_0
    return-object v1

    .line 17
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .local v1, "images":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oculus/library/model/Image$ImageName;Lcom/oculus/library/model/Image;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/Image;

    .line 19
    .local v0, "image":Lcom/oculus/library/model/Image;
    iget-object v3, v0, Lcom/oculus/library/model/Image;->name:Lcom/oculus/library/model/Image$ImageName;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static marshallParcelableList(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "parcelableList":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    :cond_0
    const/4 v2, 0x0

    new-array v0, v2, [B

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 29
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 31
    .local v0, "bytes":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public static unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/List;
    .locals 5
    .param p0, "blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 36
    if-nez p0, :cond_1

    move-object v1, v2

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 39
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 40
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v3, p0

    invoke-virtual {v0, p0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 41
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 43
    .local v1, "parcelableList":Ljava/util/List;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    if-nez v1, :cond_0

    move-object v1, v2

    .line 45
    goto :goto_0
.end method
