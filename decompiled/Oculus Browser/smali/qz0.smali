.class public final Lqz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Llz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Liz0;

    check-cast p2, Liz0;

    .line 2
    iget-object v0, p1, Liz0;->a:Ljava/lang/String;

    const-string v1, "Other"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p2, Liz0;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-wide v3, p1, Liz0;->b:J

    iget-wide p1, p2, Liz0;->b:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
