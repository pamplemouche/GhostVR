.class public final Lorg/chromium/ui/base/ResourceBundle;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;


# direct methods
.method public static getLocalePakResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/ui/base/ResourceBundle;->b:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "assets/stored-locales/"

    const-string v1, ".pak"

    .line 2
    invoke-static {v0, p0, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
