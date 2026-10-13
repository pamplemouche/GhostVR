.class public abstract Llx0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()I
    .locals 2

    .line 1
    invoke-static {}, Llx0;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x14

    return v0

    :cond_1
    const/16 v0, 0x13

    return v0
.end method

.method public static b()I
    .locals 6

    const-string v0, "QuietNotificationPrompts"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "ui_flavour"

    .line 2
    invoke-static {v0, v1}, LJ/N;->Mo3a_9tz(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4e9d899d

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v2, 0x209534bd

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "mini_infobar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "heads_up_notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    return v5

    :cond_4
    const/4 v0, 0x3

    return v0

    :cond_5
    const/4 v0, 0x2

    return v0
.end method
