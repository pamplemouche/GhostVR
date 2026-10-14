.class public Lcom/sec/android/diagmonagent/log/provider/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->a:Z

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/e;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/sec/android/diagmonagent/log/provider/e;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/e;->a:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)Lcom/sec/android/diagmonagent/log/provider/e;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/e;->b:Z

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->b:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/e;->g:Ljava/lang/String;

    return-object v0
.end method
