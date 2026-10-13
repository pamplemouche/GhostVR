.class public abstract LsC;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LfC;


# instance fields
.field public final a:LdC;

.field public final b:LZB;

.field public final c:LbC;

.field public final d:LeC;

.field public e:LPC;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(LZB;LdC;LdC;LbC;LeC;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LPC;

    invoke-direct {v0}, LPC;-><init>()V

    iput-object v0, p0, LsC;->e:LPC;

    .line 3
    iput-object p1, p0, LsC;->b:LZB;

    .line 4
    iput-object p5, p0, LsC;->d:LeC;

    .line 5
    iput-object p4, p0, LsC;->c:LbC;

    if-eqz p6, :cond_0

    .line 6
    iput-object p6, p0, LsC;->f:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "os.arch"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, LsC;->f:Ljava/lang/String;

    .line 9
    :goto_0
    iput-object p2, p0, LsC;->a:LdC;

    .line 10
    check-cast p1, LgC;

    const/4 p6, 0x0

    if-eqz p1, :cond_2

    .line 11
    check-cast p5, LfD;

    if-eqz p5, :cond_1

    .line 12
    check-cast p4, LtD;

    invoke-virtual {p4, p0}, LtD;->a(LfC;)V

    .line 13
    invoke-interface {p2, p0}, LcC;->a(LfC;)V

    .line 14
    invoke-interface {p3, p0}, LcC;->a(LfC;)V

    return-void

    .line 15
    :cond_1
    throw p6

    .line 16
    :cond_2
    throw p6
.end method
