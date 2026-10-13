.class public abstract LU0;
.super LT0;
.source "PG"


# instance fields
.field public a:[Lo4;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LT0;-><init>(LP0;)V

    .line 2
    iput-object v0, p0, LU0;->a:[Lo4;

    return-void
.end method

.method public constructor <init>(LU0;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, LT0;-><init>(LP0;)V

    .line 4
    iput-object v0, p0, LU0;->a:[Lo4;

    .line 5
    iget-object v0, p1, LU0;->b:Ljava/lang/String;

    iput-object v0, p0, LU0;->b:Ljava/lang/String;

    .line 6
    iget v0, p1, LU0;->c:I

    iput v0, p0, LU0;->c:I

    .line 7
    iget-object p1, p1, LU0;->a:[Lo4;

    invoke-static {p1}, Lp4;->a([Lo4;)[Lo4;

    move-result-object p1

    iput-object p1, p0, LU0;->a:[Lo4;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lo4;
    .locals 1

    .line 1
    iget-object v0, p0, LU0;->a:[Lo4;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LU0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lo4;)V
    .locals 6

    .line 1
    iget-object v0, p0, LU0;->a:[Lo4;

    invoke-static {v0, p1}, Lp4;->a([Lo4;[Lo4;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lp4;->a([Lo4;)[Lo4;

    move-result-object p1

    iput-object p1, p0, LU0;->a:[Lo4;

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, LU0;->a:[Lo4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 5
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lo4;->a:C

    iput-char v4, v3, Lo4;->a:C

    const/4 v3, 0x0

    .line 6
    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lo4;->b:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 7
    aget-object v4, v0, v2

    iget-object v4, v4, Lo4;->b:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Lo4;->b:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
