.class public abstract Lha0;
.super Lql0;
.source "PG"


# static fields
.field public static final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x9

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lha0;->w:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "explore"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
