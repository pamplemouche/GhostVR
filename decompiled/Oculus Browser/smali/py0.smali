.class public abstract synthetic Lpy0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lqy0;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lqy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p0, p1}, Lqy0;->b(Landroid/support/v7/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
