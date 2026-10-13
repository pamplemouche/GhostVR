.class public abstract LT60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZR;


# direct methods
.method public static a(LS60;)Landroid/content/Context;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, LzT;->a:Landroid/content/Context;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, LbS;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method
