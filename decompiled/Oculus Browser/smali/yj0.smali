.class public final synthetic Lyj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEj0;


# static fields
.field public static final a:LEj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyj0;

    invoke-direct {v0}, Lyj0;-><init>()V

    sput-object v0, Lyj0;->a:LEj0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LDj0;)V
    .locals 3

    .line 1
    check-cast p1, Lxj0;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lnk0;

    invoke-direct {v0}, Lnk0;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lnk0;->b:Z

    .line 4
    iget-object v1, p1, Lxj0;->x:LGj0;

    .line 5
    iget-object v1, v1, LGj0;->e:LVj0;

    .line 6
    iget-object v2, v1, LVj0;->d:Ljava/lang/String;

    .line 7
    iput-object v2, v0, Lnk0;->c:Ljava/lang/String;

    .line 8
    iget v2, v1, LVj0;->e:I

    .line 9
    iput v2, v0, Lnk0;->d:I

    .line 10
    iget-boolean v1, v1, LVj0;->f:Z

    .line 11
    iput-boolean v1, v0, Lnk0;->e:Z

    const/4 v1, 0x2

    .line 12
    iput v1, v0, Lnk0;->j:I

    .line 13
    invoke-virtual {p1}, Lxj0;->a()Landroid/content/Intent;

    move-result-object v1

    .line 14
    iput-object v1, v0, Lnk0;->l:Landroid/content/Intent;

    const v1, 0x7f0801fb

    .line 15
    iput v1, v0, Lnk0;->f:I

    const v1, 0x7f0800b6

    .line 16
    iput v1, v0, Lnk0;->h:I

    .line 17
    invoke-virtual {p1}, Lxj0;->b()I

    move-result v1

    .line 18
    iput v1, v0, Lnk0;->k:I

    .line 19
    iput-object p1, v0, Lnk0;->m:Lpk0;

    .line 20
    iput-object v0, p1, Lxj0;->w:Lnk0;

    .line 21
    invoke-virtual {p1}, Lxj0;->c()V

    .line 22
    iget-object p1, p1, Lxj0;->w:Lnk0;

    invoke-virtual {p1}, Lnk0;->a()Lok0;

    move-result-object p1

    invoke-static {p1}, Lxk0;->a(Lok0;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 23
    throw p1
.end method
