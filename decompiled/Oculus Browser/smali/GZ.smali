.class public abstract LGZ;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I)I
    .locals 2

    const/16 v0, 0x30

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    .line 2
    aget p0, v1, p0

    return p0

    :cond_0
    const p0, 0x7f080260

    return p0

    :array_0
    .array-data 4
        0x0
        0x7f08023a
        0x7f080239
        0x7f08023b
        0x7f08023e
        0x7f08013c
        0x7f08024a
        0x7f080245
        0x7f0802af
        0x7f08023c
        0x7f080246
        0x7f08024b
        0x7f080247
        0x7f080242
        0x7f08023f
        0x7f0802a6
        0x7f08023d
        0x7f080249
        0x7f0802b6
        0x7f08022f
        0x7f08024e
        0x7f080250
        0x7f0802c8
        0x7f0800ee
        0x7f080293
        0x7f080294
        0x7f080292
        0x7f080294
        0x7f080294
        0x7f080294
        0x7f080083
        0x7f0800dc
        0x7f0800dd
        0x7f0800e2
        0x7f080112
        0x7f080255
        0x7f08025d
        0x7f08025f
        0x7f0802ef
        0x7f0802f1
        0x7f080206
        0x7f0800ed
        0x7f080163
        0x7f080231
        0x7f080212
        0x7f080126
        0x7f0800cf
        0x7f0800d0
    .end array-data
.end method
