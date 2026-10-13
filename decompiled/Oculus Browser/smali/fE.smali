.class public final LfE;
.super LZE;
.source "PG"


# static fields
.field public static final e:LfE;


# instance fields
.field public final c:J

.field public final d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LfE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LfE;-><init>(Ljava/lang/Long;)V

    sput-object v0, LfE;->e:LfE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 7

    .line 1
    invoke-direct {p0}, LZE;-><init>()V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, LfE;->d:J

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, LXE;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "next_message_delay_ms"

    aput-object v6, v2, v3

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Field \'%s\' must be positive: %d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, LXE;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iput-wide v1, p0, LfE;->d:J

    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    .line 7
    iput-wide v0, p0, LfE;->c:J

    return-void
.end method

.method public static a(LSH;)LfE;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, LfE;

    iget-object p0, p0, LSH;->c:Ljava/lang/Long;

    invoke-direct {v0, p0}, LfE;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 7
    iget-wide v0, p0, LfE;->c:J

    invoke-static {v0, v1}, LZE;->a(J)I

    move-result v0

    .line 8
    invoke-virtual {p0}, LfE;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, LfE;->d:J

    invoke-static {v1, v2}, LZE;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(LbF;)V
    .locals 3

    .line 1
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, "<ConfigChangeMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, LfE;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LbF;->a:Ljava/lang/StringBuilder;

    const-string v1, " next_message_delay_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v0, p0, LfE;->d:J

    .line 5
    iget-object v2, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v0, 0x3e

    .line 6
    iget-object p1, p1, LbF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LfE;->c:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, LfE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, LfE;

    .line 3
    iget-wide v3, p0, LfE;->c:J

    iget-wide v5, p1, LfE;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0}, LfE;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, LfE;->d:J

    iget-wide v5, p1, LfE;->d:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method
