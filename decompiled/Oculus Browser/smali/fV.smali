.class public abstract LfV;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LfV;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p1, p0

    return p1
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2

    .line 1
    sget-object v0, LfV;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x3e8

    const/16 v1, 0x32

    const/4 v2, 0x1

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, LfV;->a(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 3

    .line 6
    invoke-static {p0}, LfV;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 7
    invoke-static {p0, v0, v1, p1, p2}, LJ/N;->Mnflce_M(Ljava/lang/String;JII)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 8
    sget-object v0, LfV;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;IIII)V
    .locals 9

    .line 10
    invoke-static {p0}, LfV;->a(Ljava/lang/String;)J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 11
    invoke-static/range {v0 .. v6}, LJ/N;->M_Iha03u(Ljava/lang/String;JIIII)J

    move-result-wide p1

    cmp-long p3, p1, v7

    if-eqz p3, :cond_0

    .line 12
    sget-object p3, LfV;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 8

    const-wide/32 v5, 0x36ee80

    const/16 v7, 0x32

    const-wide/16 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    .line 13
    invoke-static/range {v0 .. v7}, LfV;->a(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public static a(Ljava/lang/String;JJJI)V
    .locals 9

    .line 14
    invoke-static {p0}, LfV;->a(Ljava/lang/String;)J

    move-result-wide v7

    .line 15
    invoke-static {p1, p2}, LfV;->a(J)I

    move-result v3

    invoke-static {p3, p4}, LfV;->a(J)I

    move-result v4

    invoke-static {p5, p6}, LfV;->a(J)I

    move-result v5

    move-object v0, p0

    move-wide v1, v7

    move/from16 v6, p7

    .line 16
    invoke-static/range {v0 .. v6}, LJ/N;->MjmtHp9c(Ljava/lang/String;JIIII)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    .line 17
    sget-object v2, LfV;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, p0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 4

    .line 3
    invoke-static {p0}, LfV;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    invoke-static {p0, v0, v1, p1}, LJ/N;->M7u11zS_(Ljava/lang/String;JZ)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, LfV;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x64

    const/16 v1, 0x32

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, p1, v2, v0, v1}, LfV;->a(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static b(Ljava/lang/String;IIII)V
    .locals 9

    .line 2
    invoke-static {p0}, LfV;->a(Ljava/lang/String;)J

    move-result-wide v7

    move-object v0, p0

    move-wide v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 3
    invoke-static/range {v0 .. v6}, LJ/N;->MHS156g4(Ljava/lang/String;JIIII)J

    move-result-wide p1

    cmp-long p3, p1, v7

    if-eqz p3, :cond_0

    .line 4
    sget-object p3, LfV;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 8

    const-wide/32 v5, 0x2bf20

    const/16 v7, 0x32

    const-wide/16 v3, 0xa

    move-object v0, p0

    move-wide v1, p1

    .line 5
    invoke-static/range {v0 .. v7}, LfV;->a(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 3

    const v0, 0xf4240

    const/16 v1, 0x32

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, p1, v2, v0, v1}, LfV;->a(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static c(Ljava/lang/String;J)V
    .locals 8

    const-wide/16 v5, 0x2710

    const/16 v7, 0x32

    const-wide/16 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    .line 2
    invoke-static/range {v0 .. v7}, LfV;->a(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public static d(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {p0}, LfV;->a(Ljava/lang/String;)J

    move-result-wide v0

    const/16 v2, 0x65

    .line 2
    invoke-static {p0, v0, v1, p1, v2}, LJ/N;->Mnflce_M(Ljava/lang/String;JII)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, LfV;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {p0}, LfV;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-static {p0, v0, v1, p1}, LJ/N;->McztXrZ9(Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, LfV;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
