.class public Lcom/samsung/a/a/a/a/g/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Lcom/samsung/a/a/a/a/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V
    .locals 6

    const-string v1, ""

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/a/a/a/a/g/f;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/f;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/a/a/a/a/g/f;->b:J

    iput-object p4, p0, Lcom/samsung/a/a/a/a/g/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/a/a/a/a/g/f;->d:Lcom/samsung/a/a/a/a/g/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/a/a/a/a/g/f;->b:J

    return-void
.end method

.method public a(Lcom/samsung/a/a/a/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/f;->d:Lcom/samsung/a/a/a/a/g/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/a/a/a/a/g/f;->b:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/f;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/samsung/a/a/a/a/g/c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/f;->d:Lcom/samsung/a/a/a/a/g/c;

    return-object v0
.end method
