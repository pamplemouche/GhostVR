.class public LYP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LWD0;

.field public b:I

.field public c:LUf1;


# direct methods
.method public constructor <init>(LWD0;LUf1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LYP0;->a:LWD0;

    .line 3
    iget-object p1, p1, LWD0;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, LYP0;->b:I

    .line 5
    iput-object p2, p0, LYP0;->c:LUf1;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, LYP0;->c:LUf1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, LYP0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LYP0;->b:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, LYP0;->c:LUf1;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, LYP0;->c:LUf1;

    .line 6
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LXP0;

    invoke-direct {v2, p0, p1, v0}, LXP0;-><init>(LYP0;Ljava/lang/Integer;LUf1;)V

    const-wide/16 v3, 0x0

    .line 7
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
