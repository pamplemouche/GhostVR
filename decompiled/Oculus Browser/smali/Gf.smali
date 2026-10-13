.class public final LGf;
.super LLf;
.source "PG"


# instance fields
.field public final synthetic a:LLf;

.field public final synthetic b:LLf;


# direct methods
.method public constructor <init>(LLf;LLf;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGf;->a:LLf;

    iput-object p2, p0, LGf;->b:LLf;

    invoke-direct {p0}, LLf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)I
    .locals 2

    .line 1
    invoke-static {p1}, LA7;->i(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 2
    iget-object v0, p0, LGf;->a:LLf;

    goto :goto_1

    :cond_1
    iget-object v0, p0, LGf;->b:LLf;

    :goto_1
    invoke-virtual {v0, p1, p2}, LLf;->a(Landroid/view/View;I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;II)I
    .locals 2

    .line 3
    invoke-static {p1}, LA7;->i(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, LGf;->a:LLf;

    goto :goto_1

    :cond_1
    iget-object v0, p0, LGf;->b:LLf;

    :goto_1
    invoke-virtual {v0, p1, p2, p3}, LLf;->a(Landroid/view/View;II)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "SWITCHING[L:"

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGf;->a:LLf;

    invoke-virtual {v1}, LLf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LGf;->b:LLf;

    invoke-virtual {v1}, LLf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
