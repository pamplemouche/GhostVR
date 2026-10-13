.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(LWi;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 8

    .line 1
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>()V

    .line 2
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, LWi;->a(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    .line 3
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    const/4 v3, 0x2

    .line 4
    invoke-virtual {p0, v3}, LWi;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    move-object v1, p0

    check-cast v1, LXi;

    .line 6
    iget-object v4, v1, LXi;->b:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-gez v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    new-array v4, v4, [B

    .line 8
    iget-object v1, v1, LXi;->b:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v1, v4

    .line 9
    :goto_0
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 10
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, LWi;->a(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 11
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    const/4 v5, 0x4

    invoke-virtual {p0, v1, v5}, LWi;->a(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    .line 12
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    const/4 v6, 0x5

    invoke-virtual {p0, v1, v6}, LWi;->a(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    .line 13
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v7, 0x6

    invoke-virtual {p0, v1, v7}, LWi;->a(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 14
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    const/4 v7, 0x7

    .line 15
    invoke-virtual {p0, v7}, LWi;->a(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    check-cast p0, LXi;

    .line 17
    iget-object p0, p0, LXi;->b:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18
    :goto_1
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 20
    iget p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_7

    if-eq p0, v2, :cond_5

    if-eq p0, v3, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v5, :cond_4

    if-eq p0, v6, :cond_5

    goto :goto_2

    .line 21
    :cond_3
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_2

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/String;

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    const-string v2, "UTF-16"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_5
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_6

    .line 24
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_2

    .line 25
    :cond_6
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 26
    iput v4, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x0

    .line 27
    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    .line 28
    array-length p0, p0

    iput p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    goto :goto_2

    .line 29
    :cond_7
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    if-eqz p0, :cond_8

    .line 30
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_2
    return-object v0

    .line 31
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid icon"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;LWi;)V
    .locals 8

    if-eqz p1, :cond_6

    .line 1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 2
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    const-string v7, "UTF-16"

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    goto :goto_0

    .line 7
    :cond_4
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 8
    :goto_0
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    invoke-virtual {p1, v0, v5}, LWi;->b(II)V

    .line 9
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 10
    invoke-virtual {p1, v4}, LWi;->b(I)V

    .line 11
    move-object v4, p1

    check-cast v4, LXi;

    if-eqz v0, :cond_5

    .line 12
    iget-object v5, v4, LXi;->b:Landroid/os/Parcel;

    array-length v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v5, v4, LXi;->b:Landroid/os/Parcel;

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 14
    :cond_5
    iget-object v0, v4, LXi;->b:Landroid/os/Parcel;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    :goto_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v3}, LWi;->b(Landroid/os/Parcelable;I)V

    .line 16
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    invoke-virtual {p1, v0, v2}, LWi;->b(II)V

    .line 17
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    invoke-virtual {p1, v0, v1}, LWi;->b(II)V

    .line 18
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, LWi;->b(Landroid/os/Parcelable;I)V

    .line 19
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    const/4 v0, 0x7

    .line 20
    invoke-virtual {p1, v0}, LWi;->b(I)V

    .line 21
    iget-object p1, v4, LXi;->b:Landroid/os/Parcel;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 p0, 0x0

    .line 22
    throw p0
.end method
