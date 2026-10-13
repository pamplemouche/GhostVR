.class public LvT;
.super LwT;
.source "PG"


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LwT;-><init>(LtT;)V

    .line 2
    invoke-static {p1}, LJ/N;->MDkrKi31([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t destroy native command line after startup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, LJ/N;->M5K_ewhl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, LJ/N;->MUoYiNbY(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, LJ/N;->MZJ2lrZY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, LJ/N;->MsCvypjU(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
