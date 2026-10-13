.class public abstract Lyo0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(ILIo0;)Ljava/lang/String;
    .locals 4

    const-string v0, "GoogleUpdate.Result."

    .line 5
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unknown"

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    const-string p0, "TimeWindow"

    goto :goto_0

    :cond_1
    const-string p0, "Session"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const-string v0, "."

    .line 6
    invoke-static {p0, v0}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 7
    iget v2, p1, LIo0;->C:I

    invoke-static {v2}, LHo0;->a(I)LHo0;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    sget-object v2, LHo0;->x:LHo0;

    .line 9
    :cond_3
    sget-object v3, LHo0;->y:LHo0;

    if-ne v2, v3, :cond_4

    const-string v2, "Intent"

    goto :goto_1

    .line 10
    :cond_4
    sget-object v3, LHo0;->z:LHo0;

    if-ne v2, v3, :cond_5

    const-string v2, "Inline"

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 11
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0, v0}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 13
    iget p1, p1, LIo0;->D:I

    invoke-static {p1}, LGo0;->a(I)LGo0;

    move-result-object p1

    if-nez p1, :cond_6

    .line 14
    sget-object p1, LGo0;->x:LGo0;

    .line 15
    :cond_6
    sget-object v0, LGo0;->y:LGo0;

    if-ne p1, v0, :cond_7

    const-string v1, "Menu"

    goto :goto_2

    .line 16
    :cond_7
    sget-object v0, LGo0;->z:LGo0;

    if-ne p1, v0, :cond_8

    const-string v1, "Infobar"

    goto :goto_2

    .line 17
    :cond_8
    sget-object v0, LGo0;->A:LGo0;

    if-ne p1, v0, :cond_9

    const-string v1, "Notification"

    .line 18
    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILIo0;Z)V
    .locals 2

    .line 1
    new-instance v0, LVU;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lyo0;->a(ILIo0;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LVU;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, LVU;->a(Z)V

    .line 3
    new-instance v0, LVU;

    invoke-static {p0, p1}, Lyo0;->a(ILIo0;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LVU;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, LVU;->a(Z)V

    return-void
.end method
