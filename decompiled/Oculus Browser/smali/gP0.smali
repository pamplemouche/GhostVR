.class public LgP0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:[Ljava/lang/String;

.field public e:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, LgP0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iput-object v0, p0, LgP0;->a:[Ljava/lang/String;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 4
    iget-object p1, p0, LgP0;->a:[Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    aput-object p2, p1, v0

    .line 5
    iget-object p1, p0, LgP0;->a:[Ljava/lang/String;

    const/4 p2, 0x2

    if-nez p3, :cond_2

    move-object p3, v1

    :cond_2
    aput-object p3, p1, p2

    .line 6
    iget-object p1, p0, LgP0;->a:[Ljava/lang/String;

    const/4 p2, 0x3

    if-nez p4, :cond_3

    move-object p4, v1

    :cond_3
    aput-object p4, p1, p2

    .line 7
    iput-boolean p5, p0, LgP0;->b:Z

    .line 8
    iput-boolean p6, p0, LgP0;->c:Z

    if-eqz p7, :cond_4

    goto :goto_0

    :cond_4
    new-array p7, v2, [Ljava/lang/String;

    .line 9
    :goto_0
    iput-object p7, p0, LgP0;->d:[Ljava/lang/String;

    if-eqz p8, :cond_5

    goto :goto_1

    :cond_5
    new-array p8, v2, [[Ljava/lang/String;

    .line 10
    :goto_1
    iput-object p8, p0, LgP0;->e:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LgP0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, LgP0;

    .line 3
    iget-object v0, p0, LgP0;->a:[Ljava/lang/String;

    iget-object v2, p1, LgP0;->a:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LgP0;->b:Z

    iget-boolean v2, p1, LgP0;->b:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, LgP0;->c:Z

    iget-boolean v2, p1, LgP0;->c:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, LgP0;->d:[Ljava/lang/String;

    iget-object v2, p1, LgP0;->d:[Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LgP0;->e:[[Ljava/lang/String;

    iget-object p1, p1, LgP0;->e:[[Ljava/lang/String;

    .line 5
    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
