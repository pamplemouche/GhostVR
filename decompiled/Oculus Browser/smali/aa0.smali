.class public abstract Laa0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LeU0;


# direct methods
.method public static a()LeU0;
    .locals 2

    .line 1
    sget-object v0, Laa0;->a:LeU0;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, LJ/N;->Ml3x2KBq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeU0;

    const-string v1, "UseDownloadOfflineContentProvider"

    .line 3
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, LZ90;

    invoke-direct {v1, v0}, LZ90;-><init>(LeU0;)V

    move-object v0, v1

    .line 5
    :goto_0
    sput-object v0, Laa0;->a:LeU0;

    .line 6
    :cond_1
    sget-object v0, Laa0;->a:LeU0;

    return-object v0
.end method
