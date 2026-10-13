.class public final LID;
.super LZE;
.source "PG"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const-string v0, "is_online"

    .line 2
    invoke-static {v0, p1}, LZE;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, LID;->c:Z

    return-void
.end method

.method public static a(LqH;)LID;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, LID;

    iget-object p0, p0, LqH;->c:Ljava/lang/Boolean;

    invoke-direct {v0, p0}, LID;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    iget-boolean v0, p0, LID;->c:Z

    invoke-static {v0}, LZE;->a(Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public a(LbF;)V
    .locals 2

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<NetworkStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " is_online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-boolean v0, p0, LID;->c:Z

    .line 4
    iget-object v1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    .line 5
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LID;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LID;

    .line 3
    iget-boolean v1, p0, LID;->c:Z

    iget-boolean p1, p1, LID;->c:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
